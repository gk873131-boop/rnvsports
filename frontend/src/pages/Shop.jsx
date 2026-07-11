import React, { useState, useEffect, useCallback } from 'react';
import { useSearchParams, Link } from 'react-router-dom';
import { FiX, FiShoppingBag } from 'react-icons/fi';
import SEO from '../components/common/SEO';
import ProductCard from '../components/common/ProductCard';
import { ProductCardSkeleton } from '../components/common/LoadingSpinner';
import EmptyState from '../components/common/EmptyState';
import { productService, categoryService, brandService } from '../services/services';

const SORT_OPTIONS = [
  { value: '',           label: 'Default' },
  { value: 'newest',     label: 'Newest' },
  { value: 'price_asc',  label: 'Price: Low to High' },
  { value: 'price_desc', label: 'Price: High to Low' },
  { value: 'name_asc',   label: 'Name: A-Z' },
];

export default function Shop() {
  const [searchParams, setSearchParams] = useSearchParams();

  const [products,    setProducts]    = useState([]);
  const [pagination,  setPagination]  = useState(null);
  const [loading,     setLoading]     = useState(true);
  const [categories,  setCategories]  = useState([]);
  const [brands,      setBrands]      = useState([]);
  const [sidebarOpen, setSidebarOpen] = useState(false);

  const sort       = searchParams.get('sort')     || '';
  const categoryId = searchParams.get('category') || '';
  const brandId    = searchParams.get('brand')    || '';
  const q          = searchParams.get('q')        || '';
  const page       = parseInt(searchParams.get('page') || '1', 10);

  const setParam = useCallback((key, val) => {
    const next = new URLSearchParams(searchParams);
    if (val) next.set(key, val); else next.delete(key);
    next.delete('page');
    setSearchParams(next);
  }, [searchParams, setSearchParams]);

  const setPage = (p) => {
    const next = new URLSearchParams(searchParams);
    next.set('page', p);
    setSearchParams(next);
  };

  useEffect(() => {
    Promise.all([categoryService.getAll(), brandService.getAll()])
      .then(([cRes, bRes]) => { setCategories(cRes.data || []); setBrands(bRes.data || []); })
      .catch(() => {});
  }, []);

  useEffect(() => {
    setLoading(true);
    const params = { page, limit: 12, sort, q };
    if (categoryId) params.category_id = categoryId;
    if (brandId)    params.brand_id    = brandId;

    productService.getAll(params)
      .then(r => { setProducts(r.data || []); setPagination(r.pagination || null); })
      .catch(() => setProducts([]))
      .finally(() => setLoading(false));
  }, [sort, categoryId, brandId, q, page]);

  const clearFilters = () => setSearchParams({});

  const hasFilters = sort || categoryId || brandId || q;

  return (
    <>
      <SEO title="Shop" description="Browse all sports and gym products at RNV Sports." />

      <div className="page-header">
        <div className="container">
          <h1>All Products</h1>
          <div className="breadcrumb" style={{ justifyContent: 'center' }}>
            <Link to="/">Home</Link>
            <span className="breadcrumb-sep">/</span>
            <span>Shop</span>
          </div>
        </div>
      </div>

      <div className="section-sm">
        <div className="container">
          <div style={{ display: 'flex', gap: '2rem', alignItems: 'flex-start' }}>

            {/* Sidebar */}
            <aside className="filter-sidebar" style={{ display: sidebarOpen ? 'block' : undefined }}>
              <div style={{ position: 'sticky', top: 80 }}>
                <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: '1.25rem' }}>
                  <h3 style={{ fontWeight: 700, fontSize: 'var(--font-size-base)' }}>Filters</h3>
                  {hasFilters && (
                    <button onClick={clearFilters} style={{ fontSize: 'var(--font-size-xs)', color: 'var(--color-primary)', fontWeight: 600 }}>
                      Clear all
                    </button>
                  )}
                </div>

                {/* Categories */}
                <div className="filter-group">
                  <div className="filter-group-title">Category</div>
                  <div>
                    <button className={`filter-chip${!categoryId ? ' active' : ''}`} onClick={() => setParam('category', '')}>All</button>
                    {categories.map(cat => (
                      <button
                        key={cat.category_id}
                        className={`filter-chip${categoryId === String(cat.category_id) ? ' active' : ''}`}
                        onClick={() => setParam('category', categoryId === String(cat.category_id) ? '' : cat.category_id)}
                      >
                        {cat.category_name}
                      </button>
                    ))}
                  </div>
                </div>

                {/* Brands */}
                {brands.length > 0 && (
                  <div className="filter-group">
                    <div className="filter-group-title">Brand</div>
                    <div>
                      {brands.map(b => (
                        <button
                          key={b.id}
                          className={`filter-chip${brandId === String(b.id) ? ' active' : ''}`}
                          onClick={() => setParam('brand', brandId === String(b.id) ? '' : b.id)}
                        >
                          {b.title}
                        </button>
                      ))}
                    </div>
                  </div>
                )}
              </div>
            </aside>

            {/* Main */}
            <div style={{ flex: 1, minWidth: 0 }}>
              {/* Toolbar */}
              <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: '1.25rem', flexWrap: 'wrap', gap: '0.75rem' }}>
                <div style={{ fontSize: 'var(--font-size-sm)', color: 'var(--color-neutral-500)' }}>
                  {pagination ? `${pagination.total} product${pagination.total !== 1 ? 's' : ''}` : ''}
                  {q && <span> for "<strong>{q}</strong>"</span>}
                </div>
                <div style={{ display: 'flex', alignItems: 'center', gap: '0.75rem' }}>
                  <select
                    className="form-select"
                    style={{ width: 'auto', fontSize: 'var(--font-size-sm)' }}
                    value={sort}
                    onChange={e => setParam('sort', e.target.value)}
                  >
                    {SORT_OPTIONS.map(o => <option key={o.value} value={o.value}>{o.label}</option>)}
                  </select>
                </div>
              </div>

              {/* Active filters */}
              {hasFilters && (
                <div style={{ display: 'flex', flexWrap: 'wrap', gap: '0.5rem', marginBottom: '1rem' }}>
                  {q && (
                    <span className="badge badge-hot" style={{ cursor: 'pointer' }} onClick={() => setParam('q', '')}>
                      "{q}" <FiX size={11} style={{ display: 'inline', marginLeft: 3 }} />
                    </span>
                  )}
                  {categoryId && (
                    <span className="badge badge-new" style={{ cursor: 'pointer' }} onClick={() => setParam('category', '')}>
                      {categories.find(c => String(c.category_id) === categoryId)?.category_name} <FiX size={11} style={{ display: 'inline', marginLeft: 3 }} />
                    </span>
                  )}
                </div>
              )}

              {/* Products grid */}
              <div className="products-grid">
                {loading
                  ? Array.from({ length: 12 }).map((_, i) => <ProductCardSkeleton key={i} />)
                  : products.map(p => <ProductCard key={p.product_id} product={p} />)
                }
              </div>

              {!loading && !products.length && (
                <EmptyState
                  icon={FiShoppingBag}
                  title="No products found"
                  description="Try adjusting your filters or search query."
                  actionLabel="Clear Filters"
                  onAction={clearFilters}
                />
              )}

              {/* Pagination */}
              {pagination && pagination.totalPages > 1 && (
                <div className="pagination">
                  <button className="page-btn" onClick={() => setPage(page - 1)} disabled={page <= 1}>‹</button>
                  {Array.from({ length: pagination.totalPages }, (_, i) => i + 1)
                    .filter(p => p === 1 || p === pagination.totalPages || Math.abs(p - page) <= 2)
                    .map((p, i, arr) => (
                      <React.Fragment key={p}>
                        {i > 0 && arr[i - 1] !== p - 1 && <span style={{ padding: '0 4px', color: 'var(--color-neutral-300)' }}>…</span>}
                        <button className={`page-btn${p === page ? ' active' : ''}`} onClick={() => setPage(p)}>{p}</button>
                      </React.Fragment>
                    ))
                  }
                  <button className="page-btn" onClick={() => setPage(page + 1)} disabled={page >= pagination.totalPages}>›</button>
                </div>
              )}
            </div>
          </div>
        </div>
      </div>

      <style>{`
        @media (max-width: 768px) {
          .filter-sidebar { display: none; }
        }
      `}</style>
    </>
  );
}
