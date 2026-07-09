import { createContext, useContext, useState, useEffect, useCallback } from 'react';
import supabase from '../services/supabase';
import { authService, cartService } from '../services/api';

const AuthContext = createContext(null);

export const useAuth = () => {
  const context = useContext(AuthContext);
  if (!context) throw new Error('useAuth must be used within AuthProvider');
  return context;
};

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [profile, setProfile] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const init = async () => {
      try {
        const sessionUser = await authService.getUser();
        if (sessionUser) {
          setUser(sessionUser);
          const userProfile = await authService.getProfile(sessionUser.id);
          setProfile(userProfile);
        }
      } catch (e) {
        console.error('Auth init error:', e);
      } finally {
        setLoading(false);
      }
    };
    init();

    const { data: { subscription } } = authService.onAuthStateChange((event, session) => {
      if (event === 'SIGNED_IN' && session?.user) {
        setUser(session.user);
        authService.getProfile(session.user.id).then(setProfile);
      } else if (event === 'SIGNED_OUT') {
        setUser(null);
        setProfile(null);
      }
    });
    return () => subscription.unsubscribe();
  }, []);

  const signUp = async (data) => await authService.signUp(data);
  const signIn = async (data) => await authService.signIn(data);
  const signOut = async () => { await authService.signOut(); setUser(null); setProfile(null); };
  const updateProfile = async (updates) => {
    if (!user) return null;
    const updated = await authService.updateProfile(user.id, updates);
    setProfile(updated);
    return updated;
  };

  return (
    <AuthContext.Provider value={{ user, profile, loading, isAuthenticated: !!user, signUp, signIn, signOut, updateProfile }}>
      {children}
    </AuthContext.Provider>
  );
};

const CartContext = createContext(null);

export const useCart = () => {
  const context = useContext(CartContext);
  if (!context) throw new Error('useCart must be used within CartProvider');
  return context;
};

export const CartProvider = ({ children }) => {
  const { user } = useContext(AuthContext) || {};
  const [items, setItems] = useState([]);
  const [loading, setLoading] = useState(true);
  const [discount, setDiscount] = useState(0);
  const [promoCode, setPromoCode] = useState(null);

  const cookieId = typeof window !== 'undefined' ? (() => {
    let id = localStorage.getItem('cart_id');
    if (!id) { id = `cart_${Date.now()}_${Math.random().toString(36).substr(2, 9)}`; localStorage.setItem('cart_id', id); }
    return id;
  })() : null;

  const loadCart = useCallback(async () => {
    try {
      setLoading(true);
      const cartItems = await cartService.getCart(user?.id || null, user ? null : cookieId);
      setItems(cartItems);
    } catch (e) {
      console.error('Cart load error:', e);
      setItems([]);
    } finally {
      setLoading(false);
    }
  }, [user?.id, cookieId]);

  useEffect(() => { loadCart(); }, [loadCart]);

  const subtotal = items.reduce((sum, item) => sum + (item.price * item.quantity), 0);
  const itemsCount = items.reduce((sum, item) => sum + item.quantity, 0);
  const total = Math.max(0, subtotal - discount);

  const addItem = async (product, { quantity = 1, sizeId, colorId, price }) => {
    await cartService.addItem({ productId: product.id, quantity, sizeId, colorId, price, userId: user?.id, cookieId: user ? null : cookieId });
    await loadCart();
  };

  const updateQuantity = async (cartId, quantity) => {
    if (quantity <= 0) await cartService.removeItem(cartId);
    else await cartService.updateItem(cartId, quantity);
    await loadCart();
  };

  const removeItem = async (cartId) => { await cartService.removeItem(cartId); await loadCart(); };

  const removeAll = async () => {
    await cartService.clearCart(user?.id || null, user ? null : cookieId);
    setItems([]); setDiscount(0); setPromoCode(null);
  };

  const applyPromo = (promo, amount) => { setPromoCode(promo); setDiscount(amount); };
  const removePromo = () => { setPromoCode(null); setDiscount(0); };

  return (
    <CartContext.Provider value={{ items, loading, subtotal, itemsCount, discount, promoCode, total, addItem, updateQuantity, removeItem, removeAll, applyPromo, removePromo, refreshCart: loadCart }}>
      {children}
    </CartContext.Provider>
  );
};

const WishlistContext = createContext(null);

export const useWishlist = () => {
  const context = useContext(WishlistContext);
  if (!context) throw new Error('useWishlist must be used within WishlistProvider');
  return context;
};

export const WishlistProvider = ({ children }) => {
  const { user, isAuthenticated } = useContext(AuthContext) || {};
  const [items, setItems] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const load = async () => {
      if (!isAuthenticated || !user) { setItems([]); setLoading(false); return; }
      try {
        setLoading(true);
        const data = await supabase.from('wishlist').select('*, product:products(*)').eq('user_id', user.id).eq('status', true);
        setItems(data.data || []);
      } catch (e) {
        setItems([]);
      } finally {
        setLoading(false);
      }
    };
    load();
  }, [user?.id, isAuthenticated]);

  const addItem = async (product, price) => {
    if (!isAuthenticated) return { success: false, error: 'Please login', requiresAuth: true };
    await supabase.from('wishlist').insert({ user_id: user.id, product_id: product.id, price, status: true });
    const data = await supabase.from('wishlist').select('*, product:products(*)').eq('user_id', user.id).eq('status', true);
    setItems(data.data || []);
    return { success: true };
  };

  const removeItem = async (wishlistId) => {
    await supabase.from('wishlist').update({ status: false }).eq('id', wishlistId);
    const data = await supabase.from('wishlist').select('*, product:products(*)').eq('user_id', user.id).eq('status', true);
    setItems(data.data || []);
  };

  return (
    <WishlistContext.Provider value={{ items, loading, itemsCount: items.length, addItem, removeItem, isInWishlist: (productId) => items.some(i => i.product_id === productId) }}>
      {children}
    </WishlistContext.Provider>
  );
};
