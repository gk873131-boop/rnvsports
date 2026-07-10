import { createContext, useContext, useState, useEffect, useCallback } from 'react'
import { authService, cartService, wishlistService } from '../services/services'
import Cookies from 'js-cookie'

// ===== Auth Context =====
const AuthContext = createContext(null)
export const useAuth = () => {
  const ctx = useContext(AuthContext)
  if (!ctx) throw new Error('useAuth must be used within AuthProvider')
  return ctx
}

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null)
  const [profile, setProfile] = useState(null)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    const init = async () => {
      const token = localStorage.getItem('token')
      if (token) {
        try {
          const res = await authService.getProfile()
          if (res.success) {
            setUser({ id: res.data.user_id, email: res.data.customer_email, role: 'customer' })
            setProfile(res.data)
          }
        } catch (e) {
          localStorage.removeItem('token')
        }
      }
      setLoading(false)
    }
    init()
  }, [])

  const register = async (data) => {
    const res = await authService.register(data)
    if (res.success) {
      localStorage.setItem('token', res.data.token)
      setUser(res.data.user)
    }
    return res
  }

  const login = async (data) => {
    const res = await authService.login(data)
    if (res.success) {
      localStorage.setItem('token', res.data.token)
      setUser(res.data.user)
      try {
        const prof = await authService.getProfile()
        if (prof.success) setProfile(prof.data)
      } catch (e) {}
    }
    return res
  }

  const logout = () => {
    localStorage.removeItem('token')
    setUser(null)
    setProfile(null)
  }

  const updateProfileData = async (updates) => {
    const res = await authService.updateProfile(updates)
    if (res.success) {
      const prof = await authService.getProfile()
      if (prof.success) setProfile(prof.data)
    }
    return res
  }

  return (
    <AuthContext.Provider value={{
      user, profile, loading,
      isAuthenticated: !!user,
      register, login, logout,
      updateProfile: updateProfileData,
    }}>
      {children}
    </AuthContext.Provider>
  )
}

// ===== Cart Context =====
const CartContext = createContext(null)
export const useCart = () => {
  const ctx = useContext(CartContext)
  if (!ctx) throw new Error('useCart must be used within CartProvider')
  return ctx
}

export const CartProvider = ({ children }) => {
  const [items, setItems] = useState([])
  const [loading, setLoading] = useState(true)

  const loadCart = useCallback(async () => {
    try {
      setLoading(true)
      const res = await cartService.getCart()
      setItems(res.data || [])
    } catch (e) {
      setItems([])
    } finally {
      setLoading(false)
    }
  }, [])

  useEffect(() => { loadCart() }, [loadCart])

  const subtotal = items.reduce((sum, i) => sum + (i.cart_price * i.product_qty), 0)
  const itemsCount = items.reduce((sum, i) => sum + i.product_qty, 0)

  const addItem = async (productId, quantity = 1, price, size = null, color = null) => {
    const res = await cartService.addItem({ productId, quantity, price, size, color })
    await loadCart()
    return res
  }

  const updateQuantity = async (cartId, quantity) => {
    if (quantity <= 0) return removeItem(cartId)
    await cartService.updateItem(cartId, quantity)
    await loadCart()
  }

  const removeItem = async (cartId) => {
    await cartService.removeItem(cartId)
    await loadCart()
  }

  const clearCart = async () => {
    await cartService.clearCart()
    setItems([])
  }

  return (
    <CartContext.Provider value={{
      items, loading, subtotal, itemsCount,
      addItem, updateQuantity, removeItem, clearCart, refreshCart: loadCart,
    }}>
      {children}
    </CartContext.Provider>
  )
}

// ===== Wishlist Context =====
const WishlistContext = createContext(null)
export const useWishlist = () => {
  const ctx = useContext(WishlistContext)
  if (!ctx) throw new Error('useWishlist must be used within WishlistProvider')
  return ctx
}

export const WishlistProvider = ({ children }) => {
  const { isAuthenticated } = useAuth()
  const [items, setItems] = useState([])
  const [loading, setLoading] = useState(true)

  const loadWishlist = useCallback(async () => {
    if (!isAuthenticated) { setItems([]); setLoading(false); return }
    try {
      setLoading(true)
      const res = await wishlistService.getWishlist()
      setItems(res.data || [])
    } catch (e) {
      setItems([])
    } finally {
      setLoading(false)
    }
  }, [isAuthenticated])

  useEffect(() => { loadWishlist() }, [loadWishlist])

  const addItem = async (productId, price) => {
    if (!isAuthenticated) return { success: false, message: 'Please login to add wishlist items' }
    const res = await wishlistService.addItem({ productId, price })
    await loadWishlist()
    return res
  }

  const removeItem = async (id) => {
    await wishlistService.removeItem(id)
    await loadWishlist()
  }

  const isInWishlist = (productId) => items.some(i => i.product_id === productId)

  return (
    <WishlistContext.Provider value={{
      items, loading, itemsCount: items.length,
      addItem, removeItem, isInWishlist, refreshWishlist: loadWishlist,
    }}>
      {children}
    </WishlistContext.Provider>
  )
}
