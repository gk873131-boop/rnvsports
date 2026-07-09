import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { motion } from 'framer-motion';
import { FiShield, FiLock } from 'react-icons/fi';
import { useCart, useAuth } from '../context/Context';
import { orderService } from '../services/api';

const Checkout = () => {
  const navigate = useNavigate();
  const { user, profile } = useAuth();
  const { items, subtotal, discount, promoCode, total } = useCart();
  const [formData, setFormData] = useState({
    firstName: profile?.first_name || '', lastName: profile?.last_name || '', email: user?.email || '',
    phone: profile?.mobile || '', address1: profile?.address1 || '', address2: profile?.address2 || '',
    city: profile?.city || '', state: profile?.state || '', pincode: profile?.pincode || ''
  });
  const [errors, setErrors] = useState({});
  const [loading, setLoading] = useState(false);

  useEffect(() => { if (items.length === 0) navigate('/cart'); }, [items.length, navigate]);

  const shipping = total >= 500 ? 0 : 50;
  const finalTotal = total + shipping;

  const validate = () => {
    const e = {};
    if (!formData.firstName) e.firstName = 'Required';
    if (!formData.lastName) e.lastName = 'Required';
    if (!formData.email) e.email = 'Required';
    if (!formData.phone) e.phone = 'Required';
    if (!formData.address1) e.address1 = 'Required';
    if (!formData.city) e.city = 'Required';
    if (!formData.state) e.state = 'Required';
    if (!formData.pincode) e.pincode = 'Required';
    setErrors(e);
    return !Object.keys(e).length;
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!validate()) return;
    setLoading(true);
    try {
      const order = await orderService.create({
        userId: user?.id,
        orderData: {
          customerName: `${formData.firstName} ${formData.lastName}`,
          email: formData.email, mobile: formData.phone,
          address: formData.address1,
          shipName: `${formData.firstName} ${formData.lastName}`,
          shipAddress: formData.address1, shipCity: formData.city,
          shipState: formData.state, shipPincode: formData.pincode,
          subtotal, discount, total: finalTotal, paymentMode: 'online'
        },
        items: items.map(i => ({ productId: i.product_id, quantity: i.quantity, price: i.price }))
      });
      navigate(`/order-success/${order.id}`);
    } catch (err) {
      setErrors({ submit: 'Failed to place order' });
    }
    setLoading(false);
  };

  return (
    <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }}>
      <div className="bg-gray-100 py-4"><div className="container text-gray-600">Home / Checkout</div></div>
      <div className="container py-8">
        <h1 className="text-2xl font-bold mb-8">Checkout</h1>
        <form onSubmit={handleSubmit} className="grid lg:grid-cols-3 gap-8">
          <div className="lg:col-span-2 space-y-6">
            {errors.submit && <div className="bg-red-50 border border-red-200 text-red-700 p-4 rounded-lg">{errors.submit}</div>}
            <div className="bg-white rounded-lg shadow-sm p-6">
              <h2 className="text-lg font-semibold mb-4">Billing Details</h2>
              <div className="grid sm:grid-cols-2 gap-4">
                {[
                  { name: 'firstName', label: 'First Name' }, { name: 'lastName', label: 'Last Name' },
                  { name: 'email', label: 'Email', type: 'email' }, { name: 'phone', label: 'Phone' },
                  { name: 'address1', label: 'Address', full: true }, { name: 'city', label: 'City' },
                  { name: 'state', label: 'State' }, { name: 'pincode', label: 'Pincode' }
                ].map(({ name, label, type = 'text', full }) => (
                  <div key={name} className={full ? 'sm:col-span-2' : ''}>
                    <label className="block text-sm font-medium mb-1">{label} <span className="text-red-500">*</span></label>
                    <input type={type} name={name} value={formData[name]} onChange={(e) => setFormData({ ...formData, [name]: e.target.value })} className={`w-full px-4 py-2 border rounded-lg ${errors[name] ? 'border-red-500' : 'border-gray-300'}`} />
                    {errors[name] && <p className="text-red-500 text-sm">{errors[name]}</p>}
                  </div>
                ))}
              </div>
            </div>
          </div>
          <div>
            <div className="bg-white rounded-lg shadow-sm p-6 sticky top-24">
              <h2 className="text-lg font-semibold mb-4">Your Order</h2>
              <div className="space-y-3 mb-4">
                {items.map((item) => (
                  <div key={item.id} className="flex gap-3">
                    <img src={item.product?.featured_image} alt="" className="w-12 h-12 object-cover rounded" />
                    <div className="flex-1 text-sm"><p className="font-medium">{item.product?.name}</p><p className="text-gray-500">Qty: {item.quantity}</p></div>
                    <p className="font-medium">₹{(item.price * item.quantity).toLocaleString()}</p>
                  </div>
                ))}
              </div>
              <div className="border-t pt-4 space-y-2 text-gray-600">
                <div className="flex justify-between"><span>Subtotal</span><span>₹{subtotal.toLocaleString()}</span></div>
                {discount > 0 && <div className="flex justify-between text-green-600"><span>Discount</span><span>-₹{discount.toLocaleString()}</span></div>}
                <div className="flex justify-between"><span>Shipping</span><span>{shipping === 0 ? 'Free' : `₹${shipping}`}</span></div>
                <hr />
                <div className="flex justify-between font-bold text-lg text-gray-800"><span>Total</span><span>₹{finalTotal.toLocaleString()}</span></div>
              </div>
              <div className="mt-4 p-3 bg-gray-50 rounded-lg flex items-center gap-2 text-sm text-gray-600"><FiShield className="text-[#ee7203]" /> Secure payment with SSL encryption</div>
              <button type="submit" disabled={loading} className="w-full mt-6 py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600 disabled:opacity-50">
                {loading ? 'Processing...' : `Place Order - ₹${finalTotal.toLocaleString()}`}
              </button>
            </div>
          </div>
        </form>
      </div>
    </motion.div>
  );
};

export default Checkout;
