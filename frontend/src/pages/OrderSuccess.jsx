import React from 'react';
import { Link, useSearchParams } from 'react-router-dom';
import { FiCheckCircle } from 'react-icons/fi';
import SEO from '../components/common/SEO';
import { useCart } from '../context/Context';

export default function OrderSuccess() {
  const [searchParams] = useSearchParams();
  const orderNo = searchParams.get('order') || '';
  const { clearCart } = useCart();

  React.useEffect(() => { clearCart(); }, [clearCart]);

  return (
    <>
      <SEO title="Order Confirmed" />
      <div style={{ minHeight: '70vh', display: 'flex', alignItems: 'center', justifyContent: 'center', padding: '2rem 1rem' }}>
        <div style={{ textAlign: 'center', maxWidth: 480 }}>
          <div style={{ width: 88, height: 88, borderRadius: '50%', background: '#dcfce7', display: 'flex', alignItems: 'center', justifyContent: 'center', margin: '0 auto 1.5rem' }}>
            <FiCheckCircle size={44} color="var(--color-success)" />
          </div>
          <h1 style={{ fontSize: 'var(--font-size-3xl)', fontWeight: 800, marginBottom: '.5rem' }}>Order Confirmed!</h1>
          <p style={{ color: 'var(--color-neutral-500)', marginBottom: '1.5rem', lineHeight: 1.7 }}>
            Thank you for shopping with RNV Sports. Your order has been placed successfully.
          </p>
          {orderNo && (
            <div style={{ background: 'var(--color-neutral-50)', borderRadius: 'var(--radius-md)', padding: '1rem 1.5rem', marginBottom: '2rem', display: 'inline-block' }}>
              <span style={{ fontSize: 'var(--font-size-sm)', color: 'var(--color-neutral-500)' }}>Order Number</span>
              <p style={{ fontWeight: 800, fontSize: 'var(--font-size-lg)', color: 'var(--color-primary)' }}>{orderNo}</p>
            </div>
          )}
          <div style={{ display: 'flex', gap: '1rem', justifyContent: 'center', flexWrap: 'wrap' }}>
            <Link to="/dashboard?tab=orders" className="btn btn-primary btn-lg">View My Orders</Link>
            <Link to="/shop" className="btn btn-ghost btn-lg">Continue Shopping</Link>
          </div>
        </div>
      </div>
    </>
  );
}
