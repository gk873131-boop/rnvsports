import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import { FiMapPin, FiPhone, FiMail, FiClock, FiSend } from 'react-icons/fi';
import { newsletterService } from '../../services/services';

export default function Footer() {
  const [email,   setEmail]   = useState('');
  const [status,  setStatus]  = useState(null); // 'success' | 'error' | null
  const [loading, setLoading] = useState(false);

  const handleSubscribe = async (e) => {
    e.preventDefault();
    if (!email.trim()) return;
    try {
      setLoading(true);
      await newsletterService.subscribe(email);
      setStatus('success');
      setEmail('');
    } catch {
      setStatus('error');
    } finally {
      setLoading(false);
      setTimeout(() => setStatus(null), 4000);
    }
  };

  return (
    <footer className="footer">
      <div className="footer-top">
        <div className="container">
          <div className="footer-grid">
            {/* Brand */}
            <div>
              <div className="footer-heading">
                RNV<span style={{ color: 'var(--color-primary)' }}>Sports</span>
              </div>
              <p style={{ fontSize: 'var(--font-size-sm)', lineHeight: 1.8, marginBottom: '1.25rem' }}>
                Premium sports and gym equipment for athletes and fitness enthusiasts. Trusted since 2015, we bring world-class products to Indian customers.
              </p>
              <div className="footer-contact-item">
                <FiMapPin className="footer-contact-icon" />
                <span>New Delhi, India</span>
              </div>
              <div className="footer-contact-item">
                <FiPhone className="footer-contact-icon" />
                <span>+91 XXXXXXXXXX</span>
              </div>
              <div className="footer-contact-item">
                <FiMail className="footer-contact-icon" />
                <span>info@rnvsports.co.in</span>
              </div>
              <div className="footer-contact-item">
                <FiClock className="footer-contact-icon" />
                <span>Mon – Sat: 9AM – 6PM IST</span>
              </div>
            </div>

            {/* Quick Links */}
            <div>
              <div className="footer-heading">Quick Links</div>
              {[
                { to: '/',       label: 'Home' },
                { to: '/shop',   label: 'All Products' },
                { to: '/blog',   label: 'Blog' },
                { to: '/about',  label: 'About Us' },
                { to: '/contact',label: 'Contact' },
                { to: '/wishlist', label: 'Wishlist' },
              ].map(l => (
                <Link key={l.to} to={l.to} className="footer-link">{l.label}</Link>
              ))}
            </div>

            {/* Information */}
            <div>
              <div className="footer-heading">Information</div>
              {[
                { to: '/privacy',         label: 'Privacy Policy' },
                { to: '/terms',           label: 'Terms & Conditions' },
                { to: '/return-exchange', label: 'Return & Exchange' },
                { to: '/contact',         label: 'Help & Support' },
              ].map(l => (
                <Link key={l.to} to={l.to} className="footer-link">{l.label}</Link>
              ))}
            </div>

            {/* Newsletter */}
            <div>
              <div className="footer-heading">Newsletter</div>
              <p style={{ fontSize: 'var(--font-size-sm)', marginBottom: '1rem' }}>
                Subscribe to get the latest deals and product updates.
              </p>
              <form className="footer-newsletter" onSubmit={handleSubscribe}>
                <input
                  type="email"
                  placeholder="Enter your email…"
                  value={email}
                  onChange={e => setEmail(e.target.value)}
                  required
                />
                <button
                  type="submit"
                  className="btn btn-primary btn-full"
                  disabled={loading}
                  style={{ display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '0.5rem' }}
                >
                  <FiSend size={14} />
                  {loading ? 'Subscribing…' : 'Subscribe'}
                </button>
                {status === 'success' && (
                  <p style={{ color: '#4ade80', fontSize: '0.75rem', marginTop: '0.5rem' }}>Subscribed successfully!</p>
                )}
                {status === 'error' && (
                  <p style={{ color: '#f87171', fontSize: '0.75rem', marginTop: '0.5rem' }}>Failed to subscribe. Try again.</p>
                )}
              </form>
            </div>
          </div>
        </div>
      </div>

      <div className="footer-bottom">
        <div className="container" style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', flexWrap: 'wrap', gap: '0.5rem' }}>
          <span>© {new Date().getFullYear()} RNV Sports. All rights reserved.</span>
          <div style={{ display: 'flex', gap: '1rem' }}>
            <Link to="/privacy" className="footer-link" style={{ padding: 0 }}>Privacy</Link>
            <Link to="/terms"   className="footer-link" style={{ padding: 0 }}>Terms</Link>
          </div>
        </div>
      </div>
    </footer>
  );
}
