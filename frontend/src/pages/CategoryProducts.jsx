import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import SEO from '../components/common/SEO';
import ProductCard from '../components/common/ProductCard';
import { ProductCardSkeleton } from '../components/common/LoadingSpinner';
import EmptyState from '../components/common/EmptyState';
import { productService, categoryService } from '../services/services';
import { FiShoppingBag } from 'react-icons/fi';

export default function CategoryProducts() {
  const { slug } = useParams();
  const [products,  setProducts]  = useState([]);
  const [category,  setCategory]  = useState(null);
  const [loading,   setLoading]   = useState(true);
  const [sort,      setSort]      = useState('');
  const [page,      setPage]      = useState(1);
  const [pagination,setPagination]= useState(null);

  const SORT_OPTIONS = [
    { value: '',          label: 'Default' },
    { value: 'price_asc', label: 'Price: Low to High' },
    { value: 'price_desc',label: 'Price: High to Low' },
    { value: 'newest',    label: 'Newest' },
  ];

  useEffect(() => {
    categoryService.getBySlug(slug)
      .then(r => setCategory(r.data))
      .catch(() => {});
  }, [slug]);

  useEffect(() => {
    setLoading(true);
    categoryService.getBySlug(slug).then(catRes => {
      const cat = catRes.data;
      if (!cat) { setProducts([]); setLoading(false); return; }
      productService.getAll({ category_id: cat.category_id, sort, page, limit: 12 })
        .then(r => { setProducts(r.data || []); setPagination(r.pagination); })
        .catch(() => setProducts([]))
        .finally(() => setLoading(false));
    }).catch(() => { setProducts([]); setLoading(false); });
  }, [slug, sort, page]);

  return (
    <>
      <SEO
        title={category?.category_name || 'Category'}
        description={`Shop ${category?.category_name || ''} products at RNV Sports.`}
      />
      <div className="page-header">
        <div className="container">
          <h1>{category?.category_name || 'Products'}</h1>
          <div className="breadcrumb" style={{ justifyContent: 'center' }}>
            <Link to="/">Home</Link><span className="breadcrumb-sep">/</span>
            <Link to="/shop">Shop</Link><span className="breadcrumb-sep">/</span>
            <span>{category?.category_name}</span>
          </div>
        </div>
      </div>
      <div className="section-sm">
        <div className="container">
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1.25rem' }}>
            <p style={{ fontSize: 'var(--font-size-sm)', color: 'var(--color-neutral-500)' }}>
              {pagination ? `${pagination.total} products` : ''}
            </p>
            <select className="form-select" style={{ width: 'auto' }} value={sort} onChange={e => { setSort(e.target.value); setPage(1); }}>
              {SORT_OPTIONS.map(o => <option key={o.value} value={o.value}>{o.label}</option>)}
            </select>
          </div>
          <div className="products-grid">
            {loading
              ? Array.from({ length: 8 }).map((_, i) => <ProductCardSkeleton key={i} />)
              : products.map(p => <ProductCard key={p.product_id} product={p} />)
            }
          </div>
          {!loading && !products.length && (
            <EmptyState icon={FiShoppingBag} title="No products in this category" actionLabel="Browse All" actionTo="/shop" />
          )}
          {pagination && pagination.totalPages > 1 && (
            <div className="pagination">
              <button className="page-btn" onClick={() => setPage(p => p - 1)} disabled={page <= 1}>‹</button>
              {Array.from({ length: pagination.totalPages }, (_, i) => i + 1).map(p => (
                <button key={p} className={`page-btn${p === page ? ' active' : ''}`} onClick={() => setPage(p)}>{p}</button>
              ))}
              <button className="page-btn" onClick={() => setPage(p => p + 1)} disabled={page >= pagination.totalPages}>›</button>
            </div>
          )}
        </div>
      </div>
    </>
  );
}
