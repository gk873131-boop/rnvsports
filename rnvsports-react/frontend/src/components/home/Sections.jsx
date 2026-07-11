import React, { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { FiTruck, FiShield, FiRefreshCw, FiAward } from 'react-icons/fi';
import { categoryService, brandService } from '../../services/services';

export function FeaturesSection() {
  const features = [
    { icon: FiTruck,     title: 'Free Shipping',    desc: 'On orders above ₹500' },
    { icon: FiAward,     title: 'Quality Products',  desc: 'Certified & tested' },
    { icon: FiRefreshCw, title: 'Easy Returns',      desc: '15-day return policy' },
    { icon: FiShield,    title: 'Secure Payment',    desc: '100% safe & encrypted' },
  ];

  return (
    <div style={{ background: 'var(--color-neutral-50)', borderBottom: '1px solid var(--color-neutral-100)' }}>
      <div className="container">
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(4, 1fr)', gap: '0' }}>
          {features.map(({ icon: Icon, title, desc }, i) => (
            <div key={i} style={{ display: 'flex', alignItems: 'center', gap: '1rem', padding: '1.25rem 1.5rem', borderRight: i < 3 ? '1px solid var(--color-neutral-200)' : 'none' }}>
              <div style={{ width: 44, height: 44, borderRadius: 'var(--radius)', background: 'rgba(238,114,3,.1)', display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0 }}>
                <Icon size={20} color="var(--color-primary)" />
              </div>
              <div>
                <div style={{ fontWeight: 700, fontSize: 'var(--font-size-sm)', color: 'var(--color-neutral-900)' }}>{title}</div>
                <div style={{ fontSize: 'var(--font-size-xs)', color: 'var(--color-neutral-500)' }}>{desc}</div>
              </div>
            </div>
          ))}
        </div>
      </div>
      <style>{`
        @media (max-width: 768px) {
          .features-inner { grid-template-columns: repeat(2, 1fr) !important; }
        }
        @media (max-width: 480px) {
          .features-inner { grid-template-columns: 1fr !important; }
        }
      `}</style>
    </div>
  );
}

export function CategorySection() {
  const [categories, setCategories] = useState([]);

  useEffect(() => {
    categoryService.getAll()
      .then(r => setCategories((r.data || []).slice(0, 8)))
      .catch(() => {});
  }, []);

  if (!categories.length) return null;

  return (
    <div className="section-sm" style={{ background: '#fff' }}>
      <div className="container">
        <h2 className="section-title">Shop by Category</h2>
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(4, 1fr)', gap: '1rem' }}>
          {categories.map(cat => (
            <Link
              key={cat.category_id}
              to={`/category/${cat.category_slug}`}
              className="category-card"
            >
              <div className="category-avatar">
                {cat.category_name.charAt(0).toUpperCase()}
              </div>
              <span style={{ fontWeight: 600, fontSize: 'var(--font-size-sm)', color: 'var(--color-neutral-800)', textAlign: 'center' }}>
                {cat.category_name}
              </span>
            </Link>
          ))}
        </div>
      </div>
      <style>{`
        @media (max-width: 768px) { .category-card { padding: 1rem 0.75rem; } }
        @media (max-width: 640px) {
          div > a.category-card { grid-template-columns: repeat(2, 1fr); }
        }
      `}</style>
    </div>
  );
}

export function BrandSection() {
  const [brands, setBrands] = useState([]);

  useEffect(() => {
    brandService.getAll()
      .then(r => setBrands((r.data || []).slice(0, 8)))
      .catch(() => {});
  }, []);

  if (!brands.length) return null;

  return (
    <div className="section-sm" style={{ background: 'var(--color-neutral-50)', borderTop: '1px solid var(--color-neutral-100)' }}>
      <div className="container">
        <h2 className="section-title section-title-center">Our Brands</h2>
        <div style={{ display: 'flex', flexWrap: 'wrap', gap: '1rem', justifyContent: 'center' }}>
          {brands.map(brand => (
            <Link
              key={brand.id}
              to={`/brand/${brand.slug}`}
              style={{
                display: 'flex',
                alignItems: 'center',
                justifyContent: 'center',
                padding: '1rem 1.5rem',
                background: '#fff',
                border: '1.5px solid var(--color-neutral-100)',
                borderRadius: 'var(--radius-md)',
                fontWeight: 700,
                fontSize: 'var(--font-size-sm)',
                color: 'var(--color-neutral-700)',
                minWidth: 120,
                transition: 'var(--transition)',
              }}
              onMouseEnter={e => { e.currentTarget.style.borderColor = 'var(--color-primary)'; e.currentTarget.style.color = 'var(--color-primary)'; }}
              onMouseLeave={e => { e.currentTarget.style.borderColor = 'var(--color-neutral-100)'; e.currentTarget.style.color = 'var(--color-neutral-700)'; }}
            >
              {brand.title}
            </Link>
          ))}
        </div>
      </div>
    </div>
  );
}

export function PromoSection() {
  return (
    <div className="section-sm">
      <div className="container">
        <div style={{
          background: 'linear-gradient(135deg, var(--color-secondary) 0%, #2d2d50 100%)',
          borderRadius: 'var(--radius-xl)',
          padding: '3rem 2.5rem',
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'space-between',
          gap: '2rem',
          flexWrap: 'wrap',
          color: '#fff',
        }}>
          <div>
            <div style={{ fontSize: 'var(--font-size-xs)', fontWeight: 700, textTransform: 'uppercase', letterSpacing: '.1em', color: 'var(--color-primary)', marginBottom: '.5rem' }}>
              Special Offer
            </div>
            <h3 style={{ fontSize: 'var(--font-size-2xl)', fontWeight: 800, marginBottom: '.5rem' }}>
              Free Shipping on Orders ₹500+
            </h3>
            <p style={{ color: 'rgba(255,255,255,.7)', fontSize: 'var(--font-size-sm)' }}>
              Shop our complete range of sports and gym equipment.
            </p>
          </div>
          <Link to="/shop" className="btn btn-primary btn-xl" style={{ flexShrink: 0 }}>
            Shop Now
          </Link>
        </div>
      </div>
    </div>
  );
}
