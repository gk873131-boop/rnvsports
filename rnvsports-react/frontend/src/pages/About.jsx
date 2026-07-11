import React from 'react';
import { Link } from 'react-router-dom';
import { FiTarget, FiAward, FiUsers, FiCalendar } from 'react-icons/fi';
import SEO from '../components/common/SEO';

export default function About() {
  const stats = [
    { icon: FiCalendar, value: '2015', label: 'Founded' },
    { icon: FiUsers,    value: '10K+', label: 'Happy Customers' },
    { icon: FiAward,    value: '500+', label: 'Products' },
    { icon: FiTarget,   value: '100%', label: 'Quality Assured' },
  ];

  const features = [
    { icon: FiTarget, title: 'Our Mission',
      desc: 'To provide every Indian athlete and fitness enthusiast with access to world-class sports and gym equipment at accessible prices.' },
    { icon: FiAward, title: 'Quality First',
      desc: 'Every product in our catalogue is carefully selected and tested to meet the highest quality standards.' },
    { icon: FiUsers, title: 'Customer Focus',
      desc: 'Our customers are at the heart of everything we do. We offer expert guidance, fast delivery, and hassle-free returns.' },
    { icon: FiCalendar, title: 'Trusted Since 2015',
      desc: 'Over a decade of experience helping athletes, physiotherapists, and fitness enthusiasts across India.' },
  ];

  return (
    <>
      <SEO title="About Us" description="Learn about RNV Sports — India's trusted source for premium sports and gym equipment since 2015." />

      <div className="page-header">
        <div className="container">
          <h1>About Us</h1>
          <div className="breadcrumb" style={{ justifyContent: 'center' }}>
            <Link to="/">Home</Link><span className="breadcrumb-sep">/</span><span>About</span>
          </div>
        </div>
      </div>

      {/* Hero section */}
      <div className="section">
        <div className="container">
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '3.5rem', alignItems: 'center' }}>
            <div>
              <div style={{ fontSize: 'var(--font-size-xs)', fontWeight: 700, textTransform: 'uppercase', letterSpacing: '.1em', color: 'var(--color-primary)', marginBottom: '.75rem' }}>
                Our Story
              </div>
              <h2 style={{ fontSize: 'var(--font-size-3xl)', fontWeight: 800, lineHeight: 1.2, marginBottom: '1.25rem' }}>
                Premium Sports Equipment for Every Athlete
              </h2>
              <p style={{ color: 'var(--color-neutral-600)', lineHeight: 1.8, marginBottom: '1.25rem' }}>
                Founded in 2015, RNV Sports (by Hiralal Surgicals) started with a simple goal: make professional-grade sports and rehabilitation equipment accessible to every Indian athlete and fitness enthusiast.
              </p>
              <p style={{ color: 'var(--color-neutral-600)', lineHeight: 1.8, marginBottom: '2rem' }}>
                Today, we offer over 500 products including ankle supports, knee braces, gym equipment, physiotherapy aids, and sports accessories from leading brands — delivered across India.
              </p>
              <Link to="/shop" className="btn btn-primary btn-lg">Explore Products</Link>
            </div>
            <div style={{ borderRadius: 'var(--radius-xl)', overflow: 'hidden', aspectRatio: '4/3' }}>
              <img
                src="/images/about.jpg"
                alt="RNV Sports"
                style={{ width: '100%', height: '100%', objectFit: 'cover' }}
              />
            </div>
          </div>
        </div>
      </div>

      {/* Stats */}
      <div style={{ background: 'var(--color-secondary)', color: '#fff', padding: '3rem 0' }}>
        <div className="container">
          <div style={{ display: 'grid', gridTemplateColumns: 'repeat(4, 1fr)', gap: '1rem', textAlign: 'center' }}>
            {stats.map(({ icon: Icon, value, label }) => (
              <div key={label}>
                <Icon size={28} color="var(--color-primary)" style={{ marginBottom: '0.5rem' }} />
                <div style={{ fontSize: 'var(--font-size-3xl)', fontWeight: 800, color: '#fff', marginBottom: '.25rem' }}>{value}</div>
                <div style={{ fontSize: 'var(--font-size-sm)', color: 'rgba(255,255,255,.7)' }}>{label}</div>
              </div>
            ))}
          </div>
        </div>
      </div>

      {/* Feature cards */}
      <div className="section">
        <div className="container">
          <h2 className="section-title section-title-center">Why Choose RNV Sports</h2>
          <div className="grid-2" style={{ marginTop: '1rem', gap: '1.5rem' }}>
            {features.map(({ icon: Icon, title, desc }) => (
              <div key={title} className="card" style={{ padding: '1.75rem', display: 'flex', gap: '1.25rem' }}>
                <div style={{ width: 52, height: 52, background: 'rgba(238,114,3,.1)', borderRadius: 'var(--radius-md)', display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0 }}>
                  <Icon size={24} color="var(--color-primary)" />
                </div>
                <div>
                  <h3 style={{ fontWeight: 700, marginBottom: '.5rem' }}>{title}</h3>
                  <p style={{ color: 'var(--color-neutral-600)', fontSize: 'var(--font-size-sm)', lineHeight: 1.75 }}>{desc}</p>
                </div>
              </div>
            ))}
          </div>
        </div>
      </div>

      <style>{`@media(max-width:768px){div[style*="grid-template-columns: 1fr 1fr"]{grid-template-columns:1fr!important}.grid-2{grid-template-columns:1fr!important}div[style*="repeat(4, 1fr)"]{grid-template-columns:repeat(2,1fr)!important}}`}</style>
    </>
  );
}
