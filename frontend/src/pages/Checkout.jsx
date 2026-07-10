import React, { useState, useEffect } from 'react';
import { Link, useNavigate, useLocation } from 'react-router-dom';
import SEO from '../components/common/SEO';
import { useCart } from '../context/Context';
import { useAuth } from '../context/Context';
import { orderService } from '../services/services';
import { formatPrice, getImageUrl, getShippingCost, validateEmail, validatePhone } from '../utils';

const INDIA_STATES = [
  'Andhra Pradesh','Arunachal Pradesh','Assam','Bihar','Chhattisgarh','Goa','Gujarat','Haryana',
  'Himachal Pradesh','Jharkhand','Karnataka','Kerala','Madhya Pradesh','Maharashtra','Manipur',
  'Meghalaya','Mizoram','Nagaland','Odisha','Punjab','Rajasthan','Sikkim','Tamil Nadu','Telangana',
  'Tripura','Uttar Pradesh','Uttarakhand','West Bengal','Delhi','Jammu & Kashmir','Ladakh',
  'Chandigarh','Puducherry','Andaman & Nicobar'
];

export default function Checkout() {
  const { items, subtotal, clearCart } = useCart();
  const { isAuthenticated, profile } = useAuth();
  const navigate = useNavigate();
  const location = useLocation();

  const passedState = location.state || {};
  const promoData   = passedState.promoData || null;
  const discount    = promoData?.discount_amount || 0;
  const shippingCost = getShippingCost(subtotal);
  const total = subtotal + shippingCost - discount;

  const [form, setForm] = useState({
    firstName: '', lastName: '', email: '', mobile: '',
    address: '', city: '', state: '', pincode: '', company: '', landmark: '',
  });
  const [errors,    setErrors]    = useState({});
  const [loading,   setLoading]   = useState(false);
  const [submitErr, setSubmitErr] = useState('');

  useEffect(() => {
    if (!isAuthenticated) { navigate('/login?redirect=/checkout'); return; }
    if (!items.length)     { navigate('/cart'); }
  }, [isAuthenticated, items.length, navigate]);

  useEffect(() => {
    if (profile) {
      setForm(f => ({
        ...f,
        firstName: profile.customer_fname || '',
        lastName:  profile.customer_lname || '',
        email:     profile.customer_email || '',
        mobile:    profile.customer_mobile || '',
        address:   profile.customer_address1 || '',
        city:      profile.customer_city || '',
        state:     profile.customer_state || '',
        pincode:   profile.customer_pincode || '',
      }));
    }
  }, [profile]);

  const set = (field) => (e) => {
    setForm(f => ({ ...f, [field]: e.target.value }));
    setErrors(e => ({ ...e, [field]: '' }));
  };

  const validate = () => {
    const errs = {};
    if (!form.firstName.trim()) errs.firstName = 'Required';
    if (!form.lastName.trim())  errs.lastName  = 'Required';
    if (!form.email.trim() || !validateEmail(form.email)) errs.email = 'Valid email required';
    if (!form.mobile.trim() || !validatePhone(form.mobile)) errs.mobile = 'Valid 10-digit mobile required';
    if (!form.address.trim()) errs.address = 'Required';
    if (!form.city.trim())    errs.city    = 'Required';
    if (!form.state)          errs.state   = 'Required';
    if (!form.pincode.trim()) errs.pincode = 'Required';
    setErrors(errs);
    return Object.keys(errs).length === 0;
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!validate()) return;
    setLoading(true);
    setSubmitErr('');
    try {
      const orderItems = items.map(i => ({
        product_id:    i.product_id,
        qty:           i.product_qty,
        product_price: Number(i.cart_price || i.sale_price),
        total_amt:     Number(i.cart_price || i.sale_price) * Number(i.product_qty),
        size:          i.size || null,
        product_color: i.product_color || null,
      }));

      const res = await orderService.createOrder({
        customer_name: `${form.firstName} ${form.lastName}`,
        email:         form.email,
        mobile:        form.mobile,
        address:       form.address,
        landmark:      form.landmark,
        pin:           form.pincode,
        state:         form.state,
        city:          form.city,
        company_name:  form.company,
        items:         orderItems,
        total_amount:  total,
        total_discount: discount,
        promo_id:       promoData?.promo_id || null,
        payment_mode:   'COD',
      });

      const orderNo = res.data?.order_no;
      navigate(`/order-success?order=${orderNo}`);
    } catch (err) {
      setSubmitErr(err.message || 'Failed to place order. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  if (!isAuthenticated || !items.length) return null;

  const Field = ({ name, label, required, type = 'text', children }) => (
    <div className="form-group">
      <label className="form-label">{label}{required && <span>*</span>}</label>
      {children || (
        <input
          className={`form-input${errors[name] ? ' error' : ''}`}
          type={type}
          value={form[name]}
          onChange={set(name)}
        />
      )}
      {errors[name] && <p className="form-error">{errors[name]}</p>}
    </div>
  );

  return (
    <>
      <SEO title="Checkout" />

      <div className="page-header">
        <div className="container">
          <h1>Checkout</h1>
          <div className="breadcrumb" style={{ justifyContent: 'center' }}>
            <Link to="/">Home</Link><span className="breadcrumb-sep">/</span>
            <Link to="/cart">Cart</Link><span className="breadcrumb-sep">/</span>
            <span>Checkout</span>
          </div>
        </div>
      </div>

      <div className="section-sm">
        <div className="container">
          <form onSubmit={handleSubmit}>
            <div className="checkout-layout">
              {/* Billing form */}
              <div>
                <div className="card" style={{ padding: '1.5rem', marginBottom: '1.25rem' }}>
                  <h3 style={{ fontWeight: 700, marginBottom: '1.25rem' }}>Billing Details</h3>
                  <div className="grid-2">
                    <Field name="firstName" label="First Name" required />
                    <Field name="lastName"  label="Last Name"  required />
                  </div>
                  <div className="grid-2" style={{ marginTop: '1rem' }}>
                    <Field name="email"  label="Email Address" required type="email" />
                    <Field name="mobile" label="Mobile Number" required type="tel" />
                  </div>
                  <div className="form-group" style={{ marginTop: '1rem' }}>
                    <Field name="company" label="Company Name" />
                  </div>
                  <div className="form-group" style={{ marginTop: '1rem' }}>
                    <Field name="address" label="Street Address" required />
                  </div>
                  <div className="grid-2" style={{ marginTop: '1rem' }}>
                    <Field name="city" label="City" required />
                    <Field name="state" label="State" required>
                      <select className={`form-select${errors.state ? ' error' : ''}`} value={form.state} onChange={set('state')}>
                        <option value="">Select state</option>
                        {INDIA_STATES.map(s => <option key={s} value={s}>{s}</option>)}
                      </select>
                    </Field>
                  </div>
                  <div className="grid-2" style={{ marginTop: '1rem' }}>
                    <Field name="pincode"  label="Pincode"  required />
                    <Field name="landmark" label="Landmark" />
                  </div>
                </div>

                {submitErr && (
                  <div className="alert alert-error" style={{ marginBottom: '1rem' }}>{submitErr}</div>
                )}

                <button type="submit" className="btn btn-primary btn-full btn-xl" disabled={loading}>
                  {loading ? 'Placing Order…' : `Place Order — ${formatPrice(total)}`}
                </button>
              </div>

              {/* Order summary */}
              <div className="order-summary-card">
                <h3 style={{ fontWeight: 700, marginBottom: '1.25rem' }}>Order Summary</h3>
                <div style={{ display: 'flex', flexDirection: 'column', gap: '.75rem', marginBottom: '1.25rem' }}>
                  {items.map(item => (
                    <div key={item.cart_id} style={{ display: 'flex', gap: '.75rem', alignItems: 'center' }}>
                      <img
                        src={getImageUrl(item.featured_image)}
                        alt={item.product_name}
                        style={{ width: 52, height: 52, borderRadius: 'var(--radius)', objectFit: 'cover', flexShrink: 0 }}
                        onError={e => { e.target.src = 'https://images.pexels.com/photos/3490363/pexels-photo-3490363.jpeg?auto=compress&w=200'; }}
                      />
                      <div style={{ flex: 1, minWidth: 0 }}>
                        <p className="line-clamp-2" style={{ fontSize: 'var(--font-size-xs)', fontWeight: 600 }}>{item.product_name}</p>
                        {item.size && <p style={{ fontSize: '0.7rem', color: 'var(--color-neutral-400)' }}>Size: {item.size}</p>}
                        <p style={{ fontSize: 'var(--font-size-xs)', color: 'var(--color-neutral-500)' }}>Qty: {item.product_qty}</p>
                      </div>
                      <span style={{ fontWeight: 700, fontSize: 'var(--font-size-sm)', flexShrink: 0 }}>
                        {formatPrice(Number(item.cart_price || item.sale_price) * Number(item.product_qty))}
                      </span>
                    </div>
                  ))}
                </div>

                <hr className="divider" />
                <div className="order-summary-row"><span>Subtotal</span><span>{formatPrice(subtotal)}</span></div>
                <div className="order-summary-row"><span>Shipping</span><span>{shippingCost === 0 ? <span style={{ color: 'var(--color-success)' }}>Free</span> : formatPrice(shippingCost)}</span></div>
                {discount > 0 && (
                  <div className="order-summary-row" style={{ color: 'var(--color-success)' }}>
                    <span>Discount</span><span>-{formatPrice(discount)}</span>
                  </div>
                )}
                <div className="order-summary-row total">
                  <span>Total</span>
                  <span style={{ color: 'var(--color-primary)' }}>{formatPrice(total)}</span>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </>
  );
}
