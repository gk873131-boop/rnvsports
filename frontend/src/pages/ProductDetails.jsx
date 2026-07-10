import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import {
  FiShoppingCart, FiHeart, FiShare2, FiTruck,
  FiShield, FiRefreshCw, FiChevronRight, FiMinus, FiPlus
} from 'react-icons/fi';
import SEO from '../components/common/SEO';
import ProductCard from '../components/common/ProductCard';
import { PageLoader } from '../components/common/LoadingSpinner';
import { productService } from '../services/services';
import { useCart }     from '../context/Context';
import { useWishlist } from '../context/Context';
import { useAuth }     from '../context/Context';
import { formatPrice, calculateDiscount, getImageUrl } from '../utils';

export default function ProductDetails() {
  const { slug } = useParams();
  const { addItem: addToCart } = useCart();
  const { addItem: addToWishlist, removeItem: removeFromWishlist, isInWishlist, getWishlistItem } = useWishlist();
  const { isAuthenticated } = useAuth();

  const [product,  setProduct]  = useState(null);
  const [gallery,  setGallery]  = useState([]);
  const [sizes,    setSizes]    = useState([]);
  const [colors,   setColors]   = useState([]);
  const [related,  setRelated]  = useState([]);
  const [loading,  setLoading]  = useState(true);
  const [error,    setError]    = useState(null);

  const [mainImage, setMainImage] = useState('');
  const [selSize,   setSelSize]   = useState(null);
  const [selColor,  setSelColor]  = useState(null);
  const [qty,       setQty]       = useState(1);
  const [tab,       setTab]       = useState('description');
  const [cartMsg,   setCartMsg]   = useState('');
  const [addingCart,setAddingCart]= useState(false);

  useEffect(() => {
    if (!slug) return;
    setLoading(true);
    setError(null);
    productService.getBySlug(slug)
      .then(r => {
        const p = r.data;
        setProduct(p);
        setGallery(p.gallery || []);
        setSizes(p.sizes || []);
        setColors(p.colors || []);
        setMainImage(getImageUrl(p.featured_image));
        if (p.product_id) {
          productService.getRelated(p.product_id)
            .then(rr => setRelated(rr.data || []))
            .catch(() => {});
        }
      })
      .catch(e => setError(e.message || 'Product not found'))
      .finally(() => setLoading(false));
  }, [slug]);

  const inWishlist = product ? isInWishlist(product.product_id) : false;

  const handleAddToCart = async () => {
    if (!product) return;
    setAddingCart(true);
    try {
      await addToCart({
        product_id:   product.product_id,
        product_qty:  qty,
        cart_price:   selSize?.price || product.sale_price,
        size_id:      selSize?.price_id || null,
        size:         selSize?.age || null,
        color_id:     selColor?.color_id || null,
        product_color: selColor?.color_name || null,
      });
      setCartMsg('Added to cart!');
      setTimeout(() => setCartMsg(''), 3000);
    } catch (e) {
      setCartMsg(e.message || 'Failed to add to cart');
    } finally {
      setAddingCart(false);
    }
  };

  const handleWishlist = async () => {
    if (!isAuthenticated) { window.location.href = '/login'; return; }
    if (!product) return;
    try {
      if (inWishlist) {
        const item = getWishlistItem(product.product_id);
        if (item) await removeFromWishlist(item.wishlist_id);
      } else {
        await addToWishlist(product.product_id, product.sale_price);
      }
    } catch {}
  };

  const allImages = product
    ? [{ image: product.featured_image, id: 0 }, ...gallery]
    : [];

  if (loading) return <PageLoader />;
  if (error)   return (
    <div className="section">
      <div className="container" style={{ textAlign: 'center' }}>
        <h2 style={{ marginBottom: '1rem' }}>{error}</h2>
        <Link to="/shop" className="btn btn-primary">Back to Shop</Link>
      </div>
    </div>
  );
  if (!product) return null;

  const discountPct = calculateDiscount(product.regular_price, product.sale_price);
  const currentPrice = selSize?.price || product.sale_price;

  return (
    <>
      <SEO
        title={product.product_name}
        description={product.short_description || `Buy ${product.product_name} at RNV Sports.`}
        image={getImageUrl(product.featured_image)}
      />

      <div className="section-sm">
        <div className="container">
          {/* Breadcrumb */}
          <nav className="breadcrumb">
            <Link to="/">Home</Link>
            <span className="breadcrumb-sep">/</span>
            <Link to="/shop">Shop</Link>
            {product.category_name && <>
              <span className="breadcrumb-sep">/</span>
              <Link to={`/category/${product.category_slug}`}>{product.category_name}</Link>
            </>}
            <span className="breadcrumb-sep">/</span>
            <span style={{ color: 'var(--color-neutral-700)' }}>{product.product_name}</span>
          </nav>

          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '3rem', alignItems: 'flex-start' }}>
            {/* Gallery */}
            <div className="product-detail-gallery">
              {allImages.length > 1 && (
                <div className="product-detail-thumbs">
                  {allImages.map((img, i) => (
                    <button
                      key={i}
                      className={`product-detail-thumb${mainImage === getImageUrl(img.image) ? ' active' : ''}`}
                      onClick={() => setMainImage(getImageUrl(img.image))}
                    >
                      <img
                        src={getImageUrl(img.image)}
                        alt={`${product.product_name} ${i + 1}`}
                        onError={e => { e.target.src = 'https://images.pexels.com/photos/3490363/pexels-photo-3490363.jpeg?auto=compress&w=200'; }}
                      />
                    </button>
                  ))}
                </div>
              )}
              <div className="product-detail-main">
                <img
                  src={mainImage}
                  alt={product.product_name}
                  onError={e => { e.target.src = 'https://images.pexels.com/photos/3490363/pexels-photo-3490363.jpeg?auto=compress&w=600'; }}
                />
              </div>
            </div>

            {/* Info */}
            <div>
              {product.category_name && (
                <Link to={`/category/${product.category_slug}`} style={{ fontSize: 'var(--font-size-sm)', color: 'var(--color-primary)', fontWeight: 600, textTransform: 'uppercase', letterSpacing: '.06em' }}>
                  {product.category_name}
                </Link>
              )}
              <h1 style={{ fontSize: 'var(--font-size-2xl)', fontWeight: 800, color: 'var(--color-neutral-900)', margin: '.5rem 0 1rem', lineHeight: 1.3 }}>
                {product.product_name}
              </h1>

              {/* Price */}
              <div style={{ display: 'flex', alignItems: 'center', gap: '0.875rem', marginBottom: '1.25rem' }}>
                <span style={{ fontSize: 'var(--font-size-3xl)', fontWeight: 800, color: 'var(--color-primary)' }}>
                  {formatPrice(currentPrice)}
                </span>
                {product.regular_price > product.sale_price && (
                  <>
                    <span style={{ fontSize: 'var(--font-size-lg)', color: 'var(--color-neutral-400)', textDecoration: 'line-through' }}>
                      {formatPrice(product.regular_price)}
                    </span>
                    <span className="badge badge-sale">{discountPct}% OFF</span>
                  </>
                )}
              </div>

              {product.short_description && (
                <p style={{ color: 'var(--color-neutral-600)', marginBottom: '1.5rem', lineHeight: 1.75 }}>
                  {product.short_description}
                </p>
              )}

              {/* Size selector */}
              {sizes.length > 0 && (
                <div style={{ marginBottom: '1.25rem' }}>
                  <div style={{ fontWeight: 600, fontSize: 'var(--font-size-sm)', marginBottom: '.625rem' }}>
                    Size {selSize && <span style={{ color: 'var(--color-neutral-500)', fontWeight: 400 }}>— {selSize.age}</span>}
                  </div>
                  <div style={{ display: 'flex', flexWrap: 'wrap', gap: '.5rem' }}>
                    {sizes.map(s => (
                      <button
                        key={s.price_id}
                        className={`size-option${selSize?.price_id === s.price_id ? ' selected' : ''}`}
                        onClick={() => setSelSize(selSize?.price_id === s.price_id ? null : s)}
                      >
                        {s.age}
                      </button>
                    ))}
                  </div>
                </div>
              )}

              {/* Color selector */}
              {colors.length > 0 && (
                <div style={{ marginBottom: '1.25rem' }}>
                  <div style={{ fontWeight: 600, fontSize: 'var(--font-size-sm)', marginBottom: '.625rem' }}>
                    Color {selColor && <span style={{ color: 'var(--color-neutral-500)', fontWeight: 400 }}>— {selColor.color_name}</span>}
                  </div>
                  <div style={{ display: 'flex', flexWrap: 'wrap', gap: '.5rem' }}>
                    {colors.map(c => (
                      <button
                        key={c.color_id}
                        onClick={() => setSelColor(selColor?.color_id === c.color_id ? null : c)}
                        style={{
                          width: 32, height: 32, borderRadius: 'var(--radius-full)',
                          border: selColor?.color_id === c.color_id ? '2px solid var(--color-primary)' : '2px solid var(--color-neutral-200)',
                          background: c.color || c.color_name,
                          cursor: 'pointer',
                          boxShadow: selColor?.color_id === c.color_id ? '0 0 0 3px rgba(238,114,3,.25)' : 'none',
                          transition: 'var(--transition)',
                        }}
                        title={c.color_name}
                      />
                    ))}
                  </div>
                </div>
              )}

              {/* Quantity */}
              <div style={{ marginBottom: '1.5rem' }}>
                <div style={{ fontWeight: 600, fontSize: 'var(--font-size-sm)', marginBottom: '.625rem' }}>Quantity</div>
                <div className="qty-control">
                  <button className="qty-btn" onClick={() => setQty(q => Math.max(1, q - 1))} aria-label="Decrease"><FiMinus size={14} /></button>
                  <input className="qty-input" type="number" min={1} value={qty} onChange={e => setQty(Math.max(1, parseInt(e.target.value) || 1))} />
                  <button className="qty-btn" onClick={() => setQty(q => q + 1)} aria-label="Increase"><FiPlus size={14} /></button>
                </div>
              </div>

              {/* Actions */}
              {cartMsg && (
                <div className={`alert ${cartMsg.includes('Failed') ? 'alert-error' : 'alert-success'}`} style={{ marginBottom: '1rem' }}>
                  {cartMsg}
                </div>
              )}
              <div style={{ display: 'flex', gap: '.75rem', marginBottom: '1.5rem', flexWrap: 'wrap' }}>
                <button className="btn btn-primary btn-lg" style={{ flex: 1 }} onClick={handleAddToCart} disabled={addingCart}>
                  <FiShoppingCart size={18} />
                  {addingCart ? 'Adding…' : 'Add to Cart'}
                </button>
                <button
                  className="btn btn-ghost btn-icon btn-lg"
                  onClick={handleWishlist}
                  title={inWishlist ? 'Remove from wishlist' : 'Add to wishlist'}
                  style={{ background: inWishlist ? 'rgba(238,114,3,.08)' : undefined, borderColor: inWishlist ? 'var(--color-primary)' : undefined }}
                >
                  <FiHeart size={20} fill={inWishlist ? 'var(--color-primary)' : 'none'} color={inWishlist ? 'var(--color-primary)' : undefined} />
                </button>
              </div>

              {/* Trust badges */}
              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: '.625rem' }}>
                {[
                  { icon: FiTruck,     text: 'Free Shipping ₹500+' },
                  { icon: FiShield,    text: 'Secure Payment' },
                  { icon: FiRefreshCw, text: '15-Day Returns' },
                ].map(({ icon: Icon, text }) => (
                  <div key={text} className="trust-badge">
                    <Icon size={18} className="trust-icon" />
                    <span style={{ fontSize: 'var(--font-size-xs)', fontWeight: 500 }}>{text}</span>
                  </div>
                ))}
              </div>

              {product.product_code && (
                <p style={{ fontSize: 'var(--font-size-xs)', color: 'var(--color-neutral-400)', marginTop: '1rem' }}>
                  SKU: {product.product_code}
                </p>
              )}
            </div>
          </div>

          {/* Tabs */}
          <div style={{ marginTop: '3rem' }}>
            <div className="tabs">
              {[
                { id: 'description',   label: 'Description' },
                { id: 'specification', label: 'Specification' },
              ].map(t => (
                <button key={t.id} className={`tab${tab === t.id ? ' active' : ''}`} onClick={() => setTab(t.id)}>
                  {t.label}
                </button>
              ))}
            </div>
            <div className="prose">
              {tab === 'description' && (
                <div dangerouslySetInnerHTML={{ __html: product.description || '<p>No description available.</p>' }} />
              )}
              {tab === 'specification' && (
                <div dangerouslySetInnerHTML={{ __html: product.specification || '<p>No specifications available.</p>' }} />
              )}
            </div>
          </div>

          {/* Related */}
          {related.length > 0 && (
            <div style={{ marginTop: '3rem' }}>
              <h2 className="section-title">Related Products</h2>
              <div className="products-grid">
                {related.map(p => <ProductCard key={p.product_id} product={p} />)}
              </div>
            </div>
          )}
        </div>
      </div>

      <style>{`
        @media (max-width: 768px) {
          .product-detail-gallery { flex-direction: column-reverse; }
          div[style*="grid-template-columns: 1fr 1fr"] { grid-template-columns: 1fr !important; }
        }
      `}</style>
    </>
  );
}
