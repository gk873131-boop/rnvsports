import React from 'react';
import { Link } from 'react-router-dom';
import SEO from '../components/common/SEO';

const Section = ({ title, children }) => (
  <div style={{ marginBottom: '2rem' }}>
    <h2 style={{ fontSize: 'var(--font-size-xl)', fontWeight: 700, marginBottom: '.75rem', color: 'var(--color-neutral-900)' }}>{title}</h2>
    <div className="prose" style={{ fontSize: 'var(--font-size-sm)' }}>{children}</div>
  </div>
);

export default function Privacy() {
  return (
    <>
      <SEO title="Privacy Policy" />
      <div className="page-header"><div className="container"><h1>Privacy Policy</h1>
        <div className="breadcrumb" style={{ justifyContent: 'center' }}><Link to="/">Home</Link><span className="breadcrumb-sep">/</span><span>Privacy Policy</span></div>
      </div></div>
      <div className="section-sm"><div className="container" style={{ maxWidth: 800 }}>
        <p style={{ color: 'var(--color-neutral-500)', marginBottom: '2rem', fontSize: 'var(--font-size-sm)' }}>Last updated: January 2024</p>
        <Section title="Information We Collect">
          <p>We collect information you provide when you register, place an order, or contact us — including your name, email, phone number, and shipping address. We also collect usage data such as pages visited and products viewed to improve your experience.</p>
        </Section>
        <Section title="How We Use Your Information">
          <p>We use your information to process orders, deliver products, send order confirmations, and respond to enquiries. We may also send promotional emails about new products and special offers (you can opt out at any time).</p>
        </Section>
        <Section title="Information Sharing">
          <p>We do not sell, trade, or transfer your personal information to third parties except as required to fulfil your order (e.g., shipping partners) or as required by law. Payment data is handled securely by our payment gateway provider.</p>
        </Section>
        <Section title="Data Security">
          <p>We implement industry-standard security measures to protect your personal information. All payment transactions are encrypted using SSL technology. However, no transmission over the internet is completely secure.</p>
        </Section>
        <Section title="Cookies">
          <p>We use cookies to maintain your session, remember your cart, and improve site functionality. You can disable cookies in your browser settings, though some features may not work correctly.</p>
        </Section>
        <Section title="Contact Us">
          <p>If you have questions about this privacy policy, please contact us at <Link to="/contact" style={{ color: 'var(--color-primary)' }}>our contact page</Link> or email info@rnvsports.co.in.</p>
        </Section>
      </div></div>
    </>
  );
}
