import React, { createContext, useContext, useState, useEffect, useCallback } from 'react';
import { authService, userService } from '../services/services';
import { AUTH_TOKEN_KEY } from '../services/api';

const AuthContext = createContext(null);

export function AuthProvider({ children }) {
  const [user,    setUser]    = useState(null);
  const [profile, setProfile] = useState(null);
  const [loading, setLoading] = useState(true);

  const fetchProfile = useCallback(async () => {
    try {
      const res = await userService.getProfile();
      setProfile(res.data);
    } catch {
      setProfile(null);
    }
  }, []);

  useEffect(() => {
    const token = localStorage.getItem(AUTH_TOKEN_KEY);
    if (token) {
      try {
        const payload = JSON.parse(atob(token.split('.')[1]));
        if (payload.exp * 1000 > Date.now()) {
          setUser(payload);
          fetchProfile();
        } else {
          localStorage.removeItem(AUTH_TOKEN_KEY);
        }
      } catch {
        localStorage.removeItem(AUTH_TOKEN_KEY);
      }
    }
    setLoading(false);
  }, [fetchProfile]);

  const register = useCallback(async (data) => {
    const res = await authService.register(data);
    const { token, user: u } = res.data;
    localStorage.setItem(AUTH_TOKEN_KEY, token);
    setUser(u);
    await fetchProfile();
    return res;
  }, [fetchProfile]);

  const login = useCallback(async ({ email, password }) => {
    const res = await authService.login({ email, password });
    const { token, user: u } = res.data;
    localStorage.setItem(AUTH_TOKEN_KEY, token);
    setUser(u);
    await fetchProfile();
    return res;
  }, [fetchProfile]);

  const logout = useCallback(() => {
    localStorage.removeItem(AUTH_TOKEN_KEY);
    setUser(null);
    setProfile(null);
  }, []);

  const updateProfile = useCallback(async (data) => {
    const res = await userService.updateProfile(data);
    setProfile(res.data);
    return res;
  }, []);

  const value = {
    user,
    profile,
    loading,
    isAuthenticated: !!user,
    register,
    login,
    logout,
    updateProfile,
    refreshProfile: fetchProfile,
  };

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
}

export function useAuth() {
  const ctx = useContext(AuthContext);
  if (!ctx) throw new Error('useAuth must be used within AuthProvider');
  return ctx;
}

// ─── Cart Context ──────────────────────────────────────────────────────────────
const CartContext = createContext(null);

import { cartService } from '../services/services';

export function CartProvider({ children }) {
  const [items,   setItems]   = useState([]);
  const [loading, setLoading] = useState(true);
  const { isAuthenticated } = useAuth();

  const loadCart = useCallback(async () => {
    try {
      setLoading(true);
      const res = await cartService.getCart();
      setItems(res.data || []);
    } catch {
      setItems([]);
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => { loadCart(); }, [loadCart]);

  const addItem = useCallback(async (data) => {
    await cartService.addItem(data);
    await loadCart();
  }, [loadCart]);

  const updateQuantity = useCallback(async (cartId, quantity) => {
    await cartService.updateItem(cartId, { quantity });
    await loadCart();
  }, [loadCart]);

  const removeItem = useCallback(async (cartId) => {
    await cartService.removeItem(cartId);
    await loadCart();
  }, [loadCart]);

  const clearCart = useCallback(async () => {
    await cartService.clearCart();
    setItems([]);
  }, []);

  const subtotal   = items.reduce((sum, i) => sum + Number(i.cart_price || i.sale_price || 0) * Number(i.product_qty || 1), 0);
  const itemsCount = items.reduce((sum, i) => sum + Number(i.product_qty || 1), 0);

  return (
    <CartContext.Provider value={{ items, loading, subtotal, itemsCount, addItem, updateQuantity, removeItem, clearCart, reload: loadCart }}>
      {children}
    </CartContext.Provider>
  );
}

export function useCart() {
  const ctx = useContext(CartContext);
  if (!ctx) throw new Error('useCart must be used within CartProvider');
  return ctx;
}

// ─── Wishlist Context ──────────────────────────────────────────────────────────
const WishlistContext = createContext(null);

import { wishlistService } from '../services/services';

export function WishlistProvider({ children }) {
  const [items,   setItems]   = useState([]);
  const [loading, setLoading] = useState(false);
  const { isAuthenticated } = useAuth();

  const loadWishlist = useCallback(async () => {
    if (!isAuthenticated) { setItems([]); return; }
    try {
      setLoading(true);
      const res = await wishlistService.getWishlist();
      setItems(res.data || []);
    } catch {
      setItems([]);
    } finally {
      setLoading(false);
    }
  }, [isAuthenticated]);

  useEffect(() => { loadWishlist(); }, [loadWishlist]);

  const addItem = useCallback(async (productId, price) => {
    await wishlistService.addItem({ product_id: productId, price });
    await loadWishlist();
  }, [loadWishlist]);

  const removeItem = useCallback(async (wishlistId) => {
    await wishlistService.removeItem(wishlistId);
    await loadWishlist();
  }, [loadWishlist]);

  const isInWishlist = useCallback((productId) =>
    items.some(i => i.product_id === productId), [items]);

  const getWishlistItem = useCallback((productId) =>
    items.find(i => i.product_id === productId), [items]);

  return (
    <WishlistContext.Provider value={{ items, loading, addItem, removeItem, isInWishlist, getWishlistItem, reload: loadWishlist }}>
      {children}
    </WishlistContext.Provider>
  );
}

export function useWishlist() {
  const ctx = useContext(WishlistContext);
  if (!ctx) throw new Error('useWishlist must be used within WishlistProvider');
  return ctx;
}
