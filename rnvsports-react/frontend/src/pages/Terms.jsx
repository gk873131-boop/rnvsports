import React from 'react';
import { Link } from 'react-router-dom';
import SEO from '../components/common/SEO';

const Section = ({ title, children }) => (
  <div style={{ marginBottom: '2rem' }}>
    <h2 style={{ fontSize: 'var(--font-size-xl)', fontWeight: 700, marginBottom: '.75rem', color: 'var(--color-neutral-900)' }}>{title}</h2>
    <div className="prose" style={{ fontSize: 'var(--font-size-sm)' }}>{children}</div>
  </div>
);

export default function Terms() {
  return (
    <>
      <SEO title="Terms & Conditions" />
      <div className="page-header"><div className="container"><h1>Terms & Conditions</h1>
        <div className="breadcrumb" style={{ justifyContent: 'center' }}><Link to="/">Home</Link><span className="breadcrumb-sep">/</span><span>Terms</span></div>
      </div></div>
      <div className="section-sm"><div className="container" style={{ maxWidth: 800 }}>
        <p style={{ color: 'var(--color-neutral-500)', marginBottom: '2rem', fontSize: 'var(--font-size-sm)' }}>Last updated: January 2024</p>
        <Section title="Acceptance of Terms">
          <p>By accessing and using RNV Sports website, you accept and agree to be bound by these terms. If you do not agree, please do not use our website.</p>
        </Section>
        <Section title="Products & Pricing">
          <p>We reserve the right to modify product listings and prices at any time without prior notice. All prices are in Indian Rupees (INR) and inclusive of applicable taxes unless stated otherwise.</p>
        </Section>
        <Section title="Orders & Payment">
          <p>By placing an order you are making an offer to purchase. We reserve the right to accept or decline any order. Payment must be received before orders are dispatched. We accept online payments via PhonePe (UPI, cards, net banking).</p>
        </Section>
        <Section title="Shipping & Delivery">
          <p>We ship across India. Delivery times vary by location (typically 3–7 business days). Free shipping is available on orders above ₹500. We are not responsible for delays caused by courier services.</p>
        </Section>
        <Section title="Returns & Refunds">
          <p>Products can be returned within 15 days of delivery if unused, in original packaging, with tags intact. Refunds are processed within 7–10 business days. See our <Link to="/return-exchange" style={{ color: 'var(--color-primary)' }}>Return Policy</Link> for full details.</p>
        </Section>
        <Section title="Limitation of Liability">
          <p>RNV Sports shall not be liable for any indirect, incidental, or consequential damages arising from the use of our website or products. Our liability is limited to the purchase price of the item in question.</p>
        </Section>
        <Section title="Governing Law">
          <p>These terms are governed by the laws of India. Any disputes shall be subject to the exclusive jurisdiction of courts in New Delhi, India.</p>
        </Section>
      </div></div>
    </>
  );
}
