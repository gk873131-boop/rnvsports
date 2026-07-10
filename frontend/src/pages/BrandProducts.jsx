import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import SEO from '../components/common/SEO';
import ProductCard from '../components/common/ProductCard';
import { ProductCardSkeleton } from '../components/common/LoadingSpinner';
import EmptyState from '../components/common/EmptyState';
import { productService, brandService } from '../services/services';
import { FiShoppingBag } from 'react-icons/fi';

export default function BrandProducts() {
  const { slug } = useParams();
  const [products, setProducts] = useState([]);
  const [brand,    setBrand]    = useState(null);
  const [loading,  setLoading]  = useState(true);

  useEffect(() => {
    brandService.getBySlug(slug)
      .then(r => setBrand(r.data))
      .catch(() => {});
  }, [slug]);

  useEffect(() => {
    setLoading(true);
    brandService.getBySlug(slug).then(bRes => {
      const b = bRes.data;
      if (!b) { setLoading(false); return; }
      productService.getAll({ brand_id: b.id, limit: 24 })
        .then(r => setProducts(r.data || []))
        .catch(() => setProducts([]))
        .finally(() => setLoading(false));
    }).catch(() => setLoading(false));
  }, [slug]);

  return (
    <>
      <SEO title={brand?.title || 'Brand'} />
      <div className="page-header">
        <div className="container">
          <h1>{brand?.title || 'Products'}</h1>
          <div className="breadcrumb" style={{ justifyContent: 'center' }}>
            <Link to="/">Home</Link><span className="breadcrumb-sep">/</span>
            <Link to="/shop">Shop</Link><span className="breadcrumb-sep">/</span>
            <span>{brand?.title}</span>
          </div>
        </div>
      </div>
      <div className="section-sm">
        <div className="container">
          <div className="products-grid">
            {loading
              ? Array.from({ length: 8 }).map((_, i) => <ProductCardSkeleton key={i} />)
              : products.map(p => <ProductCard key={p.product_id} product={p} />)
            }
          </div>
          {!loading && !products.length && (
            <EmptyState icon={FiShoppingBag} title="No products for this brand" actionLabel="Browse All" actionTo="/shop" />
          )}
        </div>
      </div>
    </>
  );
}
