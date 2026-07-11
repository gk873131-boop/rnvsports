import React from 'react';
import { Link } from 'react-router-dom';
import { FiHeart, FiShoppingCart } from 'react-icons/fi';
import { useCart }     from '../../context/Context';
import { useWishlist } from '../../context/Context';
import { useAuth }     from '../../context/Context';
import { formatPrice, calculateDiscount, getImageUrl } from '../../utils';

export default function ProductCard({ product }) {
  const { addItem: addToCart } = useCart();
  const { addItem: addToWishlist, removeItem: removeFromWishlist, isInWishlist, getWishlistItem } = useWishlist();
  const { isAuthenticated } = useAuth();

  if (!product) return null;

  const {
    product_id, product_name, product_slug, featured_image,
    sale_price, regular_price, category_name, special, new_arraival
  } = product;

  const discountPct = calculateDiscount(regular_price, sale_price);
  const inWishlist  = isInWishlist(product_id);

  const handleAddToCart = async (e) => {
    e.preventDefault();
    e.stopPropagation();
    try {
      await addToCart({ product_id, product_qty: 1, cart_price: sale_price });
    } catch {}
  };

  const handleWishlist = async (e) => {
    e.preventDefault();
    e.stopPropagation();
    if (!isAuthenticated) { window.location.href = '/login'; return; }
    try {
      if (inWishlist) {
        const item = getWishlistItem(product_id);
        if (item) await removeFromWishlist(item.wishlist_id);
      } else {
        await addToWishlist(product_id, sale_price);
      }
    } catch {}
  };

  return (
    <Link to={`/product/${product_slug}`} className="card product-card">
      <div className="product-card__image-wrap">
        <img
          src={getImageUrl(featured_image)}
          alt={product_name}
          className="product-card__image"
          loading="lazy"
          onError={e => { e.target.src = '/images/placeholder.svg'; }}
        />

        {/* Badges */}
        <div className="product-card__badges">
          {special       && <span className="badge badge-hot">Hot</span>}
          {new_arraival  && <span className="badge badge-new">New</span>}
          {discountPct > 0 && <span className="badge badge-sale">-{discountPct}%</span>}
        </div>

        {/* Hover overlay */}
        <div className="product-card__overlay">
          <button
            className="btn btn-icon"
            style={{ background: inWishlist ? 'var(--color-primary)' : '#fff', color: inWishlist ? '#fff' : 'var(--color-neutral-700)', borderRadius: 'var(--radius-full)', width: 40, height: 40 }}
            onClick={handleWishlist}
            title={inWishlist ? 'Remove from wishlist' : 'Add to wishlist'}
          >
            <FiHeart size={17} fill={inWishlist ? '#fff' : 'none'} />
          </button>
          <button
            className="btn btn-icon"
            style={{ background: '#fff', color: 'var(--color-secondary)', borderRadius: 'var(--radius-full)', width: 40, height: 40 }}
            onClick={handleAddToCart}
            title="Add to cart"
          >
            <FiShoppingCart size={17} />
          </button>
        </div>
      </div>

      <div className="product-card__body">
        {category_name && (
          <p className="product-card__category">{category_name}</p>
        )}
        <h3 className="product-card__name line-clamp-2">{product_name}</h3>
        <div className="product-card__price-wrap">
          <span className="product-card__price">{formatPrice(sale_price)}</span>
          {regular_price > sale_price && (
            <span className="product-card__price-old">{formatPrice(regular_price)}</span>
          )}
        </div>
      </div>
    </Link>
  );
}
