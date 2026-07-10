import api from './api'

export const productService = {
  getAll: (params = {}) => api.get('/products', { params }),
  getBySlug: (slug) => api.get(`/products/${slug}`),
  getFeatured: () => api.get('/products/featured'),
  getHotSelling: () => api.get('/products/hot-selling'),
  getNewArrivals: () => api.get('/products/new-arrivals'),
  getByCategory: (slug, params = {}) => api.get(`/products/category/${slug}`, { params }),
  getByBrand: (slug) => api.get(`/products/brand/${slug}`),
  getRelated: (id) => api.get(`/products/related/${id}`),
  search: (q) => api.get('/products/search', { params: { q } }),
}

export const categoryService = {
  getAll: () => api.get('/categories'),
  getBySlug: (slug) => api.get(`/categories/${slug}`),
}

export const brandService = {
  getAll: () => api.get('/brands'),
  getBySlug: (slug) => api.get(`/brands/${slug}`),
}

export const cartService = {
  getCart: () => api.get('/cart'),
  addItem: (data) => api.post('/cart', data),
  updateItem: (id, quantity) => api.put(`/cart/${id}`, { quantity }),
  removeItem: (id) => api.delete(`/cart/${id}`),
  clearCart: () => api.delete('/cart'),
}

export const wishlistService = {
  getWishlist: () => api.get('/wishlist'),
  addItem: (data) => api.post('/wishlist', data),
  removeItem: (id) => api.delete(`/wishlist/${id}`),
}

export const orderService = {
  createOrder: (data) => api.post('/orders', data),
  getOrders: () => api.get('/orders/my-orders'),
  getOrderDetails: (orderNo) => api.get(`/orders/${orderNo}`),
}

export const authService = {
  register: (data) => api.post('/auth/register', data),
  login: (data) => api.post('/auth/login', data),
  adminLogin: (data) => api.post('/auth/admin/login', data),
  getProfile: () => api.get('/auth/profile'),
  updateProfile: (data) => api.put('/auth/profile', data),
  changePassword: (data) => api.put('/auth/password', data),
}

export const blogService = {
  getAll: () => api.get('/blogs'),
  getBySlug: (slug) => api.get(`/blogs/${slug}`),
}

export const bannerService = {
  getHomeBanners: () => api.get('/banners/home'),
  getLeftBanners: () => api.get('/banners/left'),
  getRightBanners: () => api.get('/banners/right'),
  getVideos: () => api.get('/banners/videos'),
}

export const reviewService = {
  getAll: () => api.get('/reviews'),
}

export const promoService = {
  validate: (code, amount) => api.post('/promos/validate', { code, amount }),
  getAll: () => api.get('/promos'),
}

export const enquiryService = {
  submitEnquiry: (data) => api.post('/enquiries/contact', data),
  submitProductEnquiry: (data) => api.post('/enquiries/product', data),
}

export const newsletterService = {
  subscribe: (email) => api.post('/newsletter/subscribe', { email }),
}

export const searchService = {
  search: (q) => api.get('/search', { params: { q } }),
}

export const settingsService = {
  get: () => api.get('/settings'),
  update: (data) => api.put('/settings', data),
}
