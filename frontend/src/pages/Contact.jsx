import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import { FiMapPin, FiPhone, FiMail, FiClock, FiSend, FiCheckCircle } from 'react-icons/fi';
import SEO from '../components/common/SEO';
import { enquiryService } from '../services/services';
import { validateEmail } from '../utils';

export default function Contact() {
  const [form, setForm] = useState({ name: '', email: '', subject: '', message: '' });
  const [errors,   setErrors]   = useState({});
  const [loading,  setLoading]  = useState(false);
  const [success,  setSuccess]  = useState(false);
  const [apiError, setApiError] = useState('');

  const set = (f) => (e) => { setForm(p => ({ ...p, [f]: e.target.value })); setErrors(p => ({ ...p, [f]: '' })); };

  const validate = () => {
    const errs = {};
    if (!form.name.trim())                        errs.name    = 'Required';
    if (!form.email || !validateEmail(form.email)) errs.email   = 'Valid email required';
    if (!form.message.trim())                     errs.message = 'Required';
    setErrors(errs);
    return !Object.keys(errs).length;
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!validate()) return;
    setLoading(true);
    setApiError('');
    try {
      await enquiryService.submitEnquiry({ ...form, subject: form.subject || 'Contact Us' });
      setSuccess(true);
      setForm({ name: '', email: '', subject: '', message: '' });
    } catch (err) {
      setApiError(err.message || 'Failed to send message. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  const INFO = [
    { icon: FiMapPin, title: 'Address',        text: 'New Delhi, India' },
    { icon: FiPhone,  title: 'Phone',           text: '+91 XXXXXXXXXX' },
    { icon: FiMail,   title: 'Email',           text: 'info@rnvsports.co.in' },
    { icon: FiClock,  title: 'Business Hours',  text: 'Mon – Sat: 9AM – 6PM IST' },
  ];

  return (
    <>
      <SEO title="Contact Us" description="Get in touch with RNV Sports. We're here to help." />

      <div className="page-header">
        <div className="container">
          <h1>Contact Us</h1>
          <div className="breadcrumb" style={{ justifyContent: 'center' }}>
            <Link to="/">Home</Link><span className="breadcrumb-sep">/</span><span>Contact</span>
          </div>
        </div>
      </div>

      <div className="section-sm">
        <div className="container">
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '3rem', alignItems: 'flex-start' }}>

            {/* Info */}
            <div>
              <h2 className="section-title">Get In Touch</h2>
              <p style={{ color: 'var(--color-neutral-600)', marginBottom: '2rem', lineHeight: 1.8 }}>
                Have a question about our products or need assistance with your order? Our team is happy to help.
              </p>
              <div style={{ display: 'flex', flexDirection: 'column', gap: '1.25rem' }}>
                {INFO.map(({ icon: Icon, title, text }) => (
                  <div key={title} style={{ display: 'flex', alignItems: 'flex-start', gap: '1rem' }}>
                    <div style={{ width: 44, height: 44, background: 'rgba(238,114,3,.1)', borderRadius: 'var(--radius)', display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0 }}>
                      <Icon size={18} color="var(--color-primary)" />
                    </div>
                    <div>
                      <p style={{ fontWeight: 700, fontSize: 'var(--font-size-sm)', marginBottom: '.25rem' }}>{title}</p>
                      <p style={{ color: 'var(--color-neutral-600)', fontSize: 'var(--font-size-sm)' }}>{text}</p>
                    </div>
                  </div>
                ))}
              </div>
            </div>

            {/* Form */}
            <div className="card" style={{ padding: '2rem' }}>
              {success ? (
                <div style={{ textAlign: 'center', padding: '2rem 1rem' }}>
                  <FiCheckCircle size={48} color="var(--color-success)" style={{ marginBottom: '1rem' }} />
                  <h3 style={{ fontWeight: 700, marginBottom: '.5rem' }}>Message Sent!</h3>
                  <p style={{ color: 'var(--color-neutral-500)', marginBottom: '1.5rem', fontSize: 'var(--font-size-sm)' }}>
                    We'll get back to you within 24 hours.
                  </p>
                  <button className="btn btn-primary" onClick={() => setSuccess(false)}>Send Another</button>
                </div>
              ) : (
                <>
                  <h3 style={{ fontWeight: 700, marginBottom: '1.5rem' }}>Send a Message</h3>
                  {apiError && <div className="alert alert-error" style={{ marginBottom: '1rem' }}>{apiError}</div>}
                  <form onSubmit={handleSubmit} noValidate>
                    <div className="grid-2" style={{ marginBottom: '1rem' }}>
                      {['name', 'email'].map(f => (
                        <div key={f} className="form-group">
                          <label className="form-label">{f === 'name' ? 'Full Name' : 'Email'} <span>*</span></label>
                          <input className={`form-input${errors[f] ? ' error' : ''}`} type={f === 'email' ? 'email' : 'text'} value={form[f]} onChange={set(f)} />
                          {errors[f] && <p className="form-error">{errors[f]}</p>}
                        </div>
                      ))}
                    </div>
                    <div className="form-group" style={{ marginBottom: '1rem' }}>
                      <label className="form-label">Subject</label>
                      <input className="form-input" value={form.subject} onChange={set('subject')} placeholder="Optional" />
                    </div>
                    <div className="form-group" style={{ marginBottom: '1.5rem' }}>
                      <label className="form-label">Message <span>*</span></label>
                      <textarea className={`form-textarea${errors.message ? ' error' : ''}`} value={form.message} onChange={set('message')} rows={5} placeholder="How can we help?" />
                      {errors.message && <p className="form-error">{errors.message}</p>}
                    </div>
                    <button type="submit" className="btn btn-primary btn-full" disabled={loading}>
                      <FiSend size={14} /> {loading ? 'Sending…' : 'Send Message'}
                    </button>
                  </form>
                </>
              )}
            </div>
          </div>
        </div>
      </div>

      <style>{`@media(max-width:768px){div[style*="grid-template-columns: 1fr 1fr"]{grid-template-columns:1fr!important}}`}</style>
    </>
  );
}
