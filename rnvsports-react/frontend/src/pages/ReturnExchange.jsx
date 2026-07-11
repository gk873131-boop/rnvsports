import React from 'react';
import { Link } from 'react-router-dom';
import { FiPackage, FiTruck, FiRefreshCw, FiCheckCircle, FiXCircle } from 'react-icons/fi';
import SEO from '../components/common/SEO';

export default function ReturnExchange() {
  const steps = [
    { icon: FiPackage, step: '01', title: 'Submit Request', desc: 'Contact us within 15 days of delivery via email or our contact form with your order number.' },
    { icon: FiTruck,   step: '02', title: 'Ship the Item', desc: 'Pack the item in its original packaging and ship it to our address. Keep the tracking number.' },
    { icon: FiRefreshCw, step: '03', title: 'Refund / Exchange', desc: 'Once we receive and inspect the item, we process your refund or exchange within 7–10 business days.' },
  ];

  const returnable = [
    'Item must be unused and unworn',
    'Original packaging and tags must be intact',
    'Must be returned within 15 days of delivery',
    'Include your order number in the return package',
  ];

  const notReturnable = [
    'Worn, washed, or damaged items',
    'Items without original tags',
    'Products marked as "Final Sale"',
    'Items returned after 15 days',
  ];

  return (
    <>
      <SEO title="Return & Exchange" description="Learn about RNV Sports return and exchange policy." />
      <div className="page-header">
        <div className="container">
          <h1>Return & Exchange</h1>
          <div className="breadcrumb" style={{ justifyContent: 'center' }}>
            <Link to="/">Home</Link><span className="breadcrumb-sep">/</span><span>Returns</span>
          </div>
        </div>
      </div>

      <div className="section-sm">
        <div className="container">
          {/* Steps */}
          <h2 className="section-title section-title-center">How It Works</h2>
          <div style={{ display: 'grid', gridTemplateColumns: 'repeat(3, 1fr)', gap: '1.5rem', marginBottom: '3rem' }}>
            {steps.map(({ icon: Icon, step, title, desc }) => (
              <div key={step} className="card" style={{ padding: '2rem', textAlign: 'center' }}>
                <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'center', width: 60, height: 60, background: 'rgba(238,114,3,.1)', borderRadius: 'var(--radius-full)', margin: '0 auto 1rem' }}>
                  <Icon size={24} color="var(--color-primary)" />
                </div>
                <div style={{ fontSize: 'var(--font-size-xs)', fontWeight: 800, color: 'var(--color-primary)', marginBottom: '.5rem', letterSpacing: '.1em' }}>STEP {step}</div>
                <h3 style={{ fontWeight: 700, marginBottom: '.75rem' }}>{title}</h3>
                <p style={{ color: 'var(--color-neutral-600)', fontSize: 'var(--font-size-sm)', lineHeight: 1.7 }}>{desc}</p>
              </div>
            ))}
          </div>

          {/* Conditions */}
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '1.5rem' }}>
            <div style={{ background: '#f0fdf4', border: '1px solid #bbf7d0', borderRadius: 'var(--radius-md)', padding: '1.5rem' }}>
              <h3 style={{ fontWeight: 700, color: '#15803d', marginBottom: '1rem' }}>Conditions for Return</h3>
              {returnable.map(c => (
                <div key={c} style={{ display: 'flex', alignItems: 'flex-start', gap: '.75rem', marginBottom: '.75rem' }}>
                  <FiCheckCircle size={16} color="#15803d" style={{ flexShrink: 0, marginTop: 2 }} />
                  <span style={{ fontSize: 'var(--font-size-sm)', color: '#166534' }}>{c}</span>
                </div>
              ))}
            </div>
            <div style={{ background: '#fef2f2', border: '1px solid #fecaca', borderRadius: 'var(--radius-md)', padding: '1.5rem' }}>
              <h3 style={{ fontWeight: 700, color: '#991b1b', marginBottom: '1rem' }}>Non-Returnable Items</h3>
              {notReturnable.map(c => (
                <div key={c} style={{ display: 'flex', alignItems: 'flex-start', gap: '.75rem', marginBottom: '.75rem' }}>
                  <FiXCircle size={16} color="#991b1b" style={{ flexShrink: 0, marginTop: 2 }} />
                  <span style={{ fontSize: 'var(--font-size-sm)', color: '#991b1b' }}>{c}</span>
                </div>
              ))}
            </div>
          </div>

          <div className="card" style={{ padding: '1.5rem', marginTop: '2rem', textAlign: 'center' }}>
            <p style={{ color: 'var(--color-neutral-600)', marginBottom: '1rem' }}>
              Have questions about a return or exchange?
            </p>
            <Link to="/contact" className="btn btn-primary">Contact Us</Link>
          </div>
        </div>
      </div>

      <style>{`@media(max-width:768px){div[style*="repeat(3, 1fr)"]{grid-template-columns:1fr!important}div[style*="grid-template-columns: 1fr 1fr"]{grid-template-columns:1fr!important}}`}</style>
    </>
  );
}
