import React, { useState, useEffect, useRef } from 'react';
import { Link, NavLink, useNavigate } from 'react-router-dom';
import {
  FiSearch, FiShoppingCart, FiHeart, FiUser, FiMenu, FiX,
  FiChevronDown, FiLogOut, FiGrid, FiPackage
} from 'react-icons/fi';
import { useAuth }     from '../../context/Context';
import { useCart }     from '../../context/Context';
import { useWishlist } from '../../context/Context';
import { categoryService } from '../../services/services';
import { useClickOutside } from '../../hooks';

export default function Navbar() {
  const { isAuthenticated, logout } = useAuth();
  const { itemsCount } = useCart();
  const { items: wishlistItems } = useWishlist();
  const navigate = useNavigate();

  const [searchQuery,    setSearchQuery]    = useState('');
  const [mobileOpen,     setMobileOpen]     = useState(false);
  const [userMenuOpen,   setUserMenuOpen]   = useState(false);
  const [catsOpen,       setCatsOpen]       = useState(false);
  const [categories,     setCategories]     = useState([]);
  const [mobileSearch,   setMobileSearch]   = useState(false);

  const userRef = useClickOutside(() => setUserMenuOpen(false));
  const catsRef = useClickOutside(() => setCatsOpen(false));

  useEffect(() => {
    categoryService.getAll().then(r => setCategories(r.data || [])).catch(() => {});
  }, []);

  useEffect(() => {
    if (mobileOpen) document.body.style.overflow = 'hidden';
    else            document.body.style.overflow = '';
    return () => { document.body.style.overflow = ''; };
  }, [mobileOpen]);

  const handleSearch = (e) => {
    e.preventDefault();
    if (searchQuery.trim()) {
      navigate(`/search?q=${encodeURIComponent(searchQuery.trim())}`);
      setSearchQuery('');
      setMobileSearch(false);
    }
  };

  const displayCats = categories.slice(0, 6);

  return (
    <header className="navbar">
      {/* Top bar */}
      <div className="navbar-top">
        <div className="container">
          <span>Free Shipping on orders above ₹500 | Call: +91-XXXXXXXXXX</span>
        </div>
      </div>

      {/* Main bar */}
      <div className="navbar-main">
        <div className="container">
          <div className="navbar-inner">
            {/* Hamburger */}
            <button
              className="navbar-icon-btn"
              style={{ display: 'none' }}
              id="mobile-menu-btn"
              onClick={() => setMobileOpen(true)}
              aria-label="Open menu"
            >
              <FiMenu size={22} />
            </button>

            {/* Logo */}
            <Link to="/" className="navbar-logo">
              <span>RNV<em>Sports</em></span>
            </Link>

            {/* Search */}
            <form className="navbar-search" onSubmit={handleSearch}>
              <input
                type="text"
                placeholder="Search products…"
                value={searchQuery}
                onChange={e => setSearchQuery(e.target.value)}
                aria-label="Search"
              />
              <button type="submit" className="navbar-search-btn" aria-label="Search">
                <FiSearch size={16} />
              </button>
            </form>

            {/* Actions */}
            <div className="navbar-actions">
              {/* Wishlist */}
              <Link to="/wishlist" className="navbar-icon-btn" aria-label="Wishlist">
                <FiHeart size={20} />
                {wishlistItems.length > 0 && (
                  <span className="navbar-badge">{wishlistItems.length}</span>
                )}
              </Link>

              {/* Cart */}
              <Link to="/cart" className="navbar-icon-btn" aria-label="Cart">
                <FiShoppingCart size={20} />
                {itemsCount > 0 && (
                  <span className="navbar-badge">{itemsCount}</span>
                )}
              </Link>

              {/* User */}
              {isAuthenticated ? (
                <div ref={userRef} className="navbar-dropdown" style={{ position: 'relative' }}>
                  <button
                    className="navbar-icon-btn"
                    onClick={() => setUserMenuOpen(p => !p)}
                    aria-label="Account"
                  >
                    <FiUser size={20} />
                  </button>
                  {userMenuOpen && (
                    <div className="navbar-dropdown-menu slide-down">
                      <Link to="/dashboard" className="navbar-dropdown-item" onClick={() => setUserMenuOpen(false)}>
                        <FiGrid size={14} style={{ display: 'inline', marginRight: 8 }} />Dashboard
                      </Link>
                      <Link to="/dashboard?tab=orders" className="navbar-dropdown-item" onClick={() => setUserMenuOpen(false)}>
                        <FiPackage size={14} style={{ display: 'inline', marginRight: 8 }} />My Orders
                      </Link>
                      <hr style={{ margin: '4px 8px', border: 'none', borderTop: '1px solid #f0f0f0' }} />
                      <button
                        className="navbar-dropdown-item"
                        style={{ width: '100%', textAlign: 'left' }}
                        onClick={() => { logout(); setUserMenuOpen(false); navigate('/'); }}
                      >
                        <FiLogOut size={14} style={{ display: 'inline', marginRight: 8 }} />Sign Out
                      </button>
                    </div>
                  )}
                </div>
              ) : (
                <Link to="/login" className="btn btn-primary btn-sm">Login</Link>
              )}

              {/* Mobile hamburger */}
              <button
                className="navbar-icon-btn"
                onClick={() => setMobileOpen(true)}
                aria-label="Open menu"
                style={{ display: 'none' }}
                id="hamburger-mobile"
              >
                <FiMenu size={22} />
              </button>
            </div>
          </div>
        </div>
      </div>

      {/* Desktop nav */}
      <nav className="navbar-nav">
        <div className="container">
          <div className="navbar-nav-inner">
            <NavLink to="/" end className={({ isActive }) => `navbar-nav-link${isActive ? ' active' : ''}`}>
              Home
            </NavLink>
            <NavLink to="/shop" className={({ isActive }) => `navbar-nav-link${isActive ? ' active' : ''}`}>
              All Products
            </NavLink>

            {/* Categories dropdown */}
            <div ref={catsRef} className="navbar-dropdown">
              <button
                className="navbar-nav-link"
                onClick={() => setCatsOpen(p => !p)}
              >
                Categories <FiChevronDown size={14} style={{ transition: 'transform .2s', transform: catsOpen ? 'rotate(180deg)' : 'none' }} />
              </button>
              {catsOpen && (
                <div className="navbar-dropdown-menu slide-down">
                  {displayCats.map(cat => (
                    <Link
                      key={cat.category_id}
                      to={`/category/${cat.category_slug}`}
                      className="navbar-dropdown-item"
                      onClick={() => setCatsOpen(false)}
                    >
                      {cat.category_name}
                    </Link>
                  ))}
                  {categories.length === 0 && (
                    <span className="navbar-dropdown-item" style={{ color: 'var(--color-neutral-400)' }}>Loading…</span>
                  )}
                </div>
              )}
            </div>

            <NavLink to="/about" className={({ isActive }) => `navbar-nav-link${isActive ? ' active' : ''}`}>
              About
            </NavLink>
            <NavLink to="/blog" className={({ isActive }) => `navbar-nav-link${isActive ? ' active' : ''}`}>
              Blog
            </NavLink>
            <NavLink to="/contact" className={({ isActive }) => `navbar-nav-link${isActive ? ' active' : ''}`}>
              Contact
            </NavLink>
          </div>
        </div>
      </nav>

      {/* Mobile menu */}
      {mobileOpen && (
        <div className="mobile-menu">
          <div className="mobile-menu-overlay" onClick={() => setMobileOpen(false)} />
          <div className="mobile-menu-panel">
            <div className="mobile-menu-header">
              <span style={{ fontWeight: 800, fontSize: '1.1rem' }}>RNV<em style={{ color: 'var(--color-primary)', fontStyle: 'normal' }}>Sports</em></span>
              <button onClick={() => setMobileOpen(false)} aria-label="Close">
                <FiX size={22} />
              </button>
            </div>

            {/* Mobile search */}
            <div style={{ padding: '0.75rem 1.25rem', borderBottom: '1px solid var(--color-neutral-100)' }}>
              <form onSubmit={(e) => { handleSearch(e); setMobileOpen(false); }}>
                <div style={{ position: 'relative' }}>
                  <input
                    className="form-input"
                    type="text"
                    placeholder="Search products…"
                    value={searchQuery}
                    onChange={e => setSearchQuery(e.target.value)}
                  />
                </div>
              </form>
            </div>

            <nav>
              {[
                { to: '/', label: 'Home' },
                { to: '/shop', label: 'All Products' },
                { to: '/blog', label: 'Blog' },
                { to: '/about', label: 'About' },
                { to: '/contact', label: 'Contact' },
                { to: '/cart', label: `Cart${itemsCount > 0 ? ` (${itemsCount})` : ''}` },
                { to: '/wishlist', label: 'Wishlist' },
              ].map(item => (
                <Link
                  key={item.to}
                  to={item.to}
                  className="mobile-nav-link"
                  onClick={() => setMobileOpen(false)}
                >
                  {item.label}
                </Link>
              ))}

              {displayCats.map(cat => (
                <Link
                  key={cat.category_id}
                  to={`/category/${cat.category_slug}`}
                  className="mobile-nav-link"
                  style={{ paddingLeft: '2rem', fontSize: 'var(--font-size-sm)', color: 'var(--color-neutral-600)' }}
                  onClick={() => setMobileOpen(false)}
                >
                  — {cat.category_name}
                </Link>
              ))}

              {isAuthenticated ? (
                <>
                  <Link to="/dashboard" className="mobile-nav-link" onClick={() => setMobileOpen(false)}>Dashboard</Link>
                  <button
                    className="mobile-nav-link"
                    style={{ width: '100%', textAlign: 'left', color: 'var(--color-error)' }}
                    onClick={() => { logout(); setMobileOpen(false); navigate('/'); }}
                  >
                    Sign Out
                  </button>
                </>
              ) : (
                <Link to="/login" className="mobile-nav-link" onClick={() => setMobileOpen(false)}>Login / Register</Link>
              )}
            </nav>
          </div>
        </div>
      )}

      <style>{`
        @media (max-width: 768px) {
          .navbar-search { display: none; }
          #hamburger-mobile { display: flex !important; }
          .navbar-inner { gap: 0.5rem; }
        }
      `}</style>
    </header>
  );
}
