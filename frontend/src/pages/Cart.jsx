import React, { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { FiTrash2, FiMinus, FiPlus, FiShoppingBag, FiTag } from 'react-icons/fi';
import SEO from '../components/common/SEO';
import EmptyState from '../components/common/EmptyState';
import { useCart } from '../context/Context';
import { useAuth } from '../context/Context';
import { promoService } from '../services/services';
import { formatPrice, getImageUrl, getShippingCost } from '../utils';

export default function Cart() {
  const { items, subtotal, itemsCount, updateQuantity, removeItem } = useCart();
  const { isAuthenticated } = useAuth();
  const navigate = useNavigate();

  const [promoCode,  setPromoCode]  = useState('');
  const [promoData,  setPromoData]  = useState(null);
  const [promoError, setPromoError] = useState('');
  const [promoLoading, setPromoLoading] = useState(false);

  const shippingCost = getShippingCost(subtotal);
  const discount     = promoData ? promoData.discount_amount : 0;
  const total        = subtotal + shippingCost - discount;

  const handleApplyPromo = async (e) => {
    e.preventDefault();
    if (!promoCode.trim()) return;
    setPromoLoading(true);
    setPromoError('');
    try {
      const res = await promoService.validate({ code: promoCode, amount: subtotal });
      setPromoData(res.data);
    } catch (err) {
      setPromoError(err.message || 'Invalid promo code');
      setPromoData(null);
    } finally {
      setPromoLoading(false);
    }
  };

  const handleCheckout = () => {
    const state = { promoData, total, subtotal, shippingCost };
    if (isAuthenticated) navigate('/checkout', { state });
    else navigate('/login?redirect=/checkout');
  };

  if (!itemsCount) {
    return (
      <>
        <SEO title="Cart" />
        <EmptyState
          icon={FiShoppingBag}
          title="Your cart is empty"
          description="Looks like you haven't added anything to your cart yet."
          actionLabel="Start Shopping"
          actionTo="/shop"
        />
      </>
    );
  }

  return (
    <>
      <SEO title="Shopping Cart" />

      <div className="page-header">
        <div className="container">
          <h1>Shopping Cart</h1>
          <div className="breadcrumb" style={{ justifyContent: 'center' }}>
            <Link to="/">Home</Link>
            <span className="breadcrumb-sep">/</span>
            <span>Cart</span>
          </div>
        </div>
      </div>

      <div className="section-sm">
        <div className="container">
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 380px', gap: '2rem', alignItems: 'flex-start' }}>

            {/* Cart items */}
            <div className="card" style={{ overflow: 'hidden' }}>
              <table className="cart-table">
                <thead>
                  <tr>
                    <th>Product</th>
                    <th>Price</th>
                    <th>Qty</th>
                    <th>Total</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  {items.map(item => {
                    const price = Number(item.cart_price || item.sale_price || 0);
                    const qty   = Number(item.product_qty || 1);
                    return (
                      <tr key={item.cart_id}>
                        <td>
                          <div style={{ display: 'flex', alignItems: 'center', gap: '1rem' }}>
                            <Link to={`/product/${item.product_slug}`}>
                              <img
                                src={getImageUrl(item.featured_image)}
                                alt={item.product_name}
                                className="cart-item-image"
                                onError={e => { e.target.src = 'https://images.pexels.com/photos/3490363/pexels-photo-3490363.jpeg?auto=compress&w=200'; }}
                              />
                            </Link>
                            <div>
                              <Link to={`/product/${item.product_slug}`} style={{ fontWeight: 600, fontSize: 'var(--font-size-sm)', color: 'var(--color-neutral-800)' }}>
                                {item.product_name}
                              </Link>
                              {item.size && <p style={{ fontSize: 'var(--font-size-xs)', color: 'var(--color-neutral-500)', marginTop: 2 }}>Size: {item.size}</p>}
                              {item.product_color && <p style={{ fontSize: 'var(--font-size-xs)', color: 'var(--color-neutral-500)' }}>Color: {item.product_color}</p>}
                            </div>
                          </div>
                        </td>
                        <td style={{ fontWeight: 600 }}>{formatPrice(price)}</td>
                        <td>
                          <div className="qty-control" style={{ '--qc-scale': '.9' }}>
                            <button className="qty-btn" onClick={() => updateQuantity(item.cart_id, qty - 1)} style={{ width: 32, height: 32 }}>
                              <FiMinus size={12} />
                            </button>
                            <input className="qty-input" style={{ width: 44, height: 32 }} type="number" value={qty} min={1}
                              onChange={e => updateQuantity(item.cart_id, Math.max(1, parseInt(e.target.value) || 1))} />
                            <button className="qty-btn" onClick={() => updateQuantity(item.cart_id, qty + 1)} style={{ width: 32, height: 32 }}>
                              <FiPlus size={12} />
                            </button>
                          </div>
                        </td>
                        <td style={{ fontWeight: 700, color: 'var(--color-primary)' }}>{formatPrice(price * qty)}</td>
                        <td>
                          <button
                            onClick={() => removeItem(item.cart_id)}
                            style={{ color: 'var(--color-error)', padding: '0.5rem' }}
                            aria-label="Remove item"
                          >
                            <FiTrash2 size={16} />
                          </button>
                        </td>
                      </tr>
                    );
                  })}
                </tbody>
              </table>

              <div style={{ padding: '1rem', borderTop: '1px solid var(--color-neutral-100)', display: 'flex', justifyContent: 'space-between' }}>
                <Link to="/shop" className="btn btn-ghost btn-sm">← Continue Shopping</Link>
              </div>
            </div>

            {/* Order summary */}
            <div className="order-summary-card">
              <h3 style={{ fontWeight: 700, marginBottom: '1.25rem' }}>Order Summary</h3>

              <div className="order-summary-row">
                <span>Subtotal ({itemsCount} items)</span>
                <span>{formatPrice(subtotal)}</span>
              </div>
              <div className="order-summary-row">
                <span>Shipping</span>
                <span>{shippingCost === 0 ? <span style={{ color: 'var(--color-success)', fontWeight: 600 }}>Free</span> : formatPrice(shippingCost)}</span>
              </div>
              {promoData && (
                <div className="order-summary-row" style={{ color: 'var(--color-success)' }}>
                  <span>Discount ({promoData.discount_pct}%)</span>
                  <span>-{formatPrice(discount)}</span>
                </div>
              )}
              <div className="order-summary-row total">
                <span>Total</span>
                <span style={{ color: 'var(--color-primary)' }}>{formatPrice(total)}</span>
              </div>

              {/* Promo code */}
              <div style={{ marginTop: '1rem' }}>
                {promoData ? (
                  <div className="alert alert-success" style={{ fontSize: 'var(--font-size-xs)' }}>
                    <FiTag /> Promo "{promoData.promo_code}" applied!
                    <button onClick={() => { setPromoData(null); setPromoCode(''); }} style={{ marginLeft: 'auto', color: 'inherit', opacity: .7 }}>×</button>
                  </div>
                ) : (
                  <form onSubmit={handleApplyPromo}>
                    <div style={{ display: 'flex', gap: '0.5rem' }}>
                      <input
                        className={`form-input${promoError ? ' error' : ''}`}
                        placeholder="Promo code"
                        value={promoCode}
                        onChange={e => { setPromoCode(e.target.value); setPromoError(''); }}
                      />
                      <button type="submit" className="btn btn-outline btn-sm" disabled={promoLoading} style={{ flexShrink: 0 }}>
                        {promoLoading ? '…' : 'Apply'}
                      </button>
                    </div>
                    {promoError && <p className="form-error" style={{ marginTop: 4 }}>{promoError}</p>}
                  </form>
                )}
              </div>

              <button className="btn btn-primary btn-full btn-lg" style={{ marginTop: '1.25rem' }} onClick={handleCheckout}>
                Proceed to Checkout
              </button>

              {!isAuthenticated && (
                <p style={{ fontSize: 'var(--font-size-xs)', color: 'var(--color-neutral-500)', textAlign: 'center', marginTop: '.75rem' }}>
                  You'll be asked to log in before checkout.
                </p>
              )}
            </div>
          </div>
        </div>
      </div>

      <style>{`
        @media (max-width: 900px) {
          div[style*="grid-template-columns: 1fr 380px"] { grid-template-columns: 1fr !important; }
          .cart-table th:nth-child(2), .cart-table td:nth-child(2) { display: none; }
        }
      `}</style>
    </>
  );
}
