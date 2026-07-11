import React from 'react';
import { Link } from 'react-router-dom';
import { FiHeart, FiShoppingCart, FiTrash2 } from 'react-icons/fi';
import SEO from '../components/common/SEO';
import EmptyState from '../components/common/EmptyState';
import LoadingSpinner from '../components/common/LoadingSpinner';
import { useWishlist } from '../context/Context';
import { useCart }     from '../context/Context';
import { useAuth }     from '../context/Context';
import { formatPrice, getImageUrl } from '../utils';

export default function Wishlist() {
  const { isAuthenticated } = useAuth();
  const { items, loading, removeItem } = useWishlist();
  const { addItem: addToCart } = useCart();

  const handleMoveToCart = async (item) => {
    await addToCart({ product_id: item.product_id, product_qty: 1, cart_price: item.sale_price });
    await removeItem(item.wishlist_id);
  };

  if (!isAuthenticated) return (
    <>
      <SEO title="Wishlist" />
      <EmptyState
        icon={FiHeart}
        title="Sign in to view your wishlist"
        description="Save your favorite products and access them anytime."
        actionLabel="Sign In"
        actionTo="/login?redirect=/wishlist"
      />
    </>
  );

  if (loading) return <LoadingSpinner centered />;

  return (
    <>
      <SEO title="My Wishlist" />
      <div className="page-header">
        <div className="container">
          <h1>My Wishlist</h1>
          <div className="breadcrumb" style={{ justifyContent: 'center' }}>
            <Link to="/">Home</Link><span className="breadcrumb-sep">/</span><span>Wishlist</span>
          </div>
        </div>
      </div>

      <div className="section-sm">
        <div className="container">
          {!items.length ? (
            <EmptyState
              icon={FiHeart}
              title="Your wishlist is empty"
              description="Add items to your wishlist while shopping."
              actionLabel="Browse Products"
              actionTo="/shop"
            />
          ) : (
            <>
              <p style={{ color: 'var(--color-neutral-500)', marginBottom: '1.5rem', fontSize: 'var(--font-size-sm)' }}>
                {items.length} item{items.length !== 1 ? 's' : ''} in wishlist
              </p>
              <div className="products-grid">
                {items.map(item => (
                  <div key={item.wishlist_id} className="card product-card">
                    <div className="product-card__image-wrap">
                      <Link to={`/product/${item.product_slug}`}>
                        <img
                          src={getImageUrl(item.featured_image)}
                          alt={item.product_name}
                          className="product-card__image"
                          onError={e => { e.target.src = '/images/placeholder.svg'; }}
                        />
                      </Link>
                    </div>
                    <div className="product-card__body">
                      <Link to={`/product/${item.product_slug}`}>
                        <h3 className="product-card__name line-clamp-2">{item.product_name}</h3>
                      </Link>
                      <div className="product-card__price-wrap" style={{ marginBottom: '1rem' }}>
                        <span className="product-card__price">{formatPrice(item.sale_price)}</span>
                        {item.regular_price > item.sale_price && (
                          <span className="product-card__price-old">{formatPrice(item.regular_price)}</span>
                        )}
                      </div>
                      <div style={{ display: 'flex', gap: '0.5rem' }}>
                        <button
                          className="btn btn-primary btn-sm"
                          style={{ flex: 1 }}
                          onClick={() => handleMoveToCart(item)}
                        >
                          <FiShoppingCart size={14} /> Add to Cart
                        </button>
                        <button
                          className="btn btn-ghost btn-sm btn-icon"
                          onClick={() => removeItem(item.wishlist_id)}
                          title="Remove"
                        >
                          <FiTrash2 size={14} color="var(--color-error)" />
                        </button>
                      </div>
                    </div>
                  </div>
                ))}
              </div>
            </>
          )}
        </div>
      </div>
    </>
  );
}
