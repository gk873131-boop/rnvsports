import React, { useState, useEffect } from 'react';
import { useSearchParams, Link } from 'react-router-dom';
import { FiSearch } from 'react-icons/fi';
import SEO from '../components/common/SEO';
import ProductCard from '../components/common/ProductCard';
import { ProductCardSkeleton } from '../components/common/LoadingSpinner';
import EmptyState from '../components/common/EmptyState';
import { productService } from '../services/services';

export default function Search() {
  const [searchParams, setSearchParams] = useSearchParams();
  const query = searchParams.get('q') || '';

  const [inputVal, setInputVal] = useState(query);
  const [products, setProducts] = useState([]);
  const [loading,  setLoading]  = useState(false);

  useEffect(() => {
    if (!query) return;
    setLoading(true);
    productService.getAll({ search: query, limit: 24, page: 1 })
      .then(r => setProducts(r.data || []))
      .catch(() => setProducts([]))
      .finally(() => setLoading(false));
  }, [query]);

  const handleSearch = (e) => {
    e.preventDefault();
    if (inputVal.trim()) setSearchParams({ q: inputVal.trim() });
  };

  return (
    <>
      <SEO title={query ? `Search: "${query}"` : 'Search'} />

      <div className="page-header">
        <div className="container">
          <h1>Search</h1>
        </div>
      </div>

      <div className="section-sm">
        <div className="container">
          {/* Search bar */}
          <form onSubmit={handleSearch} style={{ maxWidth: 560, margin: '0 auto 2.5rem' }}>
            <div style={{ position: 'relative' }}>
              <input
                className="form-input"
                style={{ paddingLeft: '1rem', paddingRight: '3rem', borderRadius: 'var(--radius-full)', fontSize: 'var(--font-size-base)' }}
                type="text"
                placeholder="Search for products…"
                value={inputVal}
                onChange={e => setInputVal(e.target.value)}
                autoFocus
              />
              <button type="submit" style={{ position: 'absolute', right: '.75rem', top: '50%', transform: 'translateY(-50%)', color: 'var(--color-primary)' }}>
                <FiSearch size={20} />
              </button>
            </div>
          </form>

          {query && (
            <p style={{ color: 'var(--color-neutral-500)', marginBottom: '1.5rem', fontSize: 'var(--font-size-sm)' }}>
              {loading ? 'Searching…' : `${products.length} result${products.length !== 1 ? 's' : ''} for`}{' '}
              <strong>"{query}"</strong>
            </p>
          )}

          {loading ? (
            <div className="products-grid">
              {Array.from({ length: 8 }).map((_, i) => <ProductCardSkeleton key={i} />)}
            </div>
          ) : products.length ? (
            <div className="products-grid">
              {products.map(p => <ProductCard key={p.product_id} product={p} />)}
            </div>
          ) : query ? (
            <EmptyState
              icon={FiSearch}
              title="No results found"
              description={`We couldn't find any products matching "${query}".`}
              actionLabel="Browse All Products"
              actionTo="/shop"
            />
          ) : null}
        </div>
      </div>
    </>
  );
}
