import React, { useState, useEffect, useCallback } from 'react';
import { Link } from 'react-router-dom';
import { FiChevronLeft, FiChevronRight } from 'react-icons/fi';
import { bannerService } from '../../services/services';
import { getImageUrl } from '../../utils';
import ProductCard from '../common/ProductCard';
import { ProductCardSkeleton } from '../common/LoadingSpinner';

const FALLBACK_SLIDES = [
  {
    id: 1,
    name: 'Premium Sports Equipment',
    image: 'https://images.pexels.com/photos/3490363/pexels-photo-3490363.jpeg?auto=compress&w=1400',
    subtitle: 'Train harder. Recover faster. Perform better.',
  },
  {
    id: 2,
    name: 'Professional Gym Gear',
    image: 'https://images.pexels.com/photos/1552249/pexels-photo-1552249.jpeg?auto=compress&w=1400',
    subtitle: 'World-class equipment for serious athletes.',
  },
  {
    id: 3,
    name: 'Sports Supports & Braces',
    image: 'https://images.pexels.com/photos/4397840/pexels-photo-4397840.jpeg?auto=compress&w=1400',
    subtitle: 'Protect your joints. Stay in the game.',
  },
];

export function HeroSlider() {
  const [slides,  setSlides]  = useState([]);
  const [current, setCurrent] = useState(0);

  useEffect(() => {
    bannerService.getHomeBanners()
      .then(r => {
        const data = r.data || [];
        setSlides(data.length ? data : FALLBACK_SLIDES);
      })
      .catch(() => setSlides(FALLBACK_SLIDES));
  }, []);

  const prev = useCallback(() => setCurrent(c => (c === 0 ? slides.length - 1 : c - 1)), [slides.length]);
  const next = useCallback(() => setCurrent(c => (c === slides.length - 1 ? 0 : c + 1)), [slides.length]);

  useEffect(() => {
    if (slides.length < 2) return;
    const t = setInterval(next, 5000);
    return () => clearInterval(t);
  }, [next, slides.length]);

  if (!slides.length) return <div className="hero-slider" />;

  const getSlideImage = (s) => {
    if (s.image && s.image.startsWith('http')) return s.image;
    return getImageUrl(s.image);
  };

  return (
    <div className="hero-slider">
      {slides.map((slide, i) => (
        <div key={slide.id || i} className={`hero-slide${i === current ? ' active' : ''}`}>
          <img
            src={getSlideImage(slide)}
            alt={slide.name || `Slide ${i + 1}`}
            loading={i === 0 ? 'eager' : 'lazy'}
          />
          <div className="hero-overlay">
            <div className="container">
              <div className="hero-content">
                <h1>{slide.name || 'Premium Sports Equipment'}</h1>
                {slide.subtitle && <p>{slide.subtitle}</p>}
                <div style={{ display: 'flex', gap: '1rem', flexWrap: 'wrap' }}>
                  <Link to="/shop" className="btn btn-primary btn-lg">Shop Now</Link>
                  <Link to="/about" className="btn btn-outline btn-lg" style={{ borderColor: '#fff', color: '#fff' }}>Learn More</Link>
                </div>
              </div>
            </div>
          </div>
        </div>
      ))}

      {slides.length > 1 && (
        <>
          <button className="hero-arrow hero-arrow-left" onClick={prev} aria-label="Previous slide">
            <FiChevronLeft size={20} />
          </button>
          <button className="hero-arrow hero-arrow-right" onClick={next} aria-label="Next slide">
            <FiChevronRight size={20} />
          </button>
          <div className="hero-dots">
            {slides.map((_, i) => (
              <button
                key={i}
                className={`hero-dot${i === current ? ' active' : ''}`}
                onClick={() => setCurrent(i)}
                aria-label={`Go to slide ${i + 1}`}
              />
            ))}
          </div>
        </>
      )}
    </div>
  );
}

export function ProductSection({ title, fetchFn, viewAllLink = '/shop' }) {
  const [products, setProducts] = useState([]);
  const [loading,  setLoading]  = useState(true);

  useEffect(() => {
    fetchFn()
      .then(r => setProducts(r.data || []))
      .catch(() => setProducts([]))
      .finally(() => setLoading(false));
  }, [fetchFn]);

  return (
    <div className="section">
      <div className="container">
        <div style={{ display: 'flex', alignItems: 'flex-end', justifyContent: 'space-between', marginBottom: '1.5rem' }}>
          <h2 className="section-title" style={{ marginBottom: 0 }}>{title}</h2>
          <Link to={viewAllLink} className="btn btn-ghost btn-sm">View All</Link>
        </div>
        <div className="products-grid">
          {loading
            ? Array.from({ length: 4 }).map((_, i) => <ProductCardSkeleton key={i} />)
            : products.slice(0, 8).map(p => <ProductCard key={p.product_id} product={p} />)
          }
        </div>
        {!loading && !products.length && (
          <p style={{ textAlign: 'center', color: 'var(--color-neutral-400)', padding: '2rem' }}>No products found.</p>
        )}
      </div>
    </div>
  );
}
