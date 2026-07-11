import api from './api';

// ─── Products ─────────────────────────────────────────────────────────────────
export const productService = {
  getAll:         (params) => api.get('/products', { params }),
  getBySlug:      (slug)   => api.get(`/products/${slug}`),
  getFeatured:    (limit = 8) => api.get('/products/featured', { params: { limit } }),
  getHotSelling:  (limit = 8) => api.get('/products/hot-selling', { params: { limit } }),
  getNewArrivals: (limit = 8) => api.get('/products/new-arrivals', { params: { limit } }),
  getByCategory:  (slug, params) => api.get(`/products/category/${slug}`, { params }),
  getByBrand:     (slug, params) => api.get(`/products/brand/${slug}`, { params }),
  getRelated:     (id)     => api.get(`/products/${id}/related`),
  getPriceRange:  ()       => api.get('/products/price-range'),
  search:         (q, params) => api.get('/products/search', { params: { q, ...params } }),
};

// ─── Categories ───────────────────────────────────────────────────────────────
export const categoryService = {
  getAll:    () => api.get('/categories'),
  getBySlug: (slug) => api.get(`/categories/${slug}`),
  create:    (data) => api.post('/categories', data),
  update:    (id, data) => api.put(`/categories/${id}`, data),
  remove:    (id) => api.delete(`/categories/${id}`),
};

// ─── Brands ───────────────────────────────────────────────────────────────────
export const brandService = {
  getAll:    () => api.get('/brands'),
  getBySlug: (slug) => api.get(`/brands/${slug}`),
  create:    (data) => api.post('/brands', data),
  update:    (id, data) => api.put(`/brands/${id}`, data),
  remove:    (id) => api.delete(`/brands/${id}`),
};

// ─── Cart ─────────────────────────────────────────────────────────────────────
export const cartService = {
  getCart:    ()           => api.get('/cart'),
  getCount:   ()           => api.get('/cart/count'),
  addItem:    (data)       => api.post('/cart', data),
  updateItem: (id, data)   => api.put(`/cart/${id}`, data),
  removeItem: (id)         => api.delete(`/cart/${id}`),
  clearCart:  ()           => api.delete('/cart/clear'),
};

// ─── Wishlist ─────────────────────────────────────────────────────────────────
export const wishlistService = {
  getWishlist: ()           => api.get('/wishlist'),
  addItem:     (data)       => api.post('/wishlist', data),
  removeItem:  (id)         => api.delete(`/wishlist/${id}`),
};

// ─── Orders ───────────────────────────────────────────────────────────────────
export const orderService = {
  createOrder:    (data)     => api.post('/orders', data),
  getMyOrders:    ()         => api.get('/orders/my-orders'),
  getOrderDetails:(orderNo)  => api.get(`/orders/${orderNo}`),
};

// ─── Auth ─────────────────────────────────────────────────────────────────────
export const authService = {
  register:   (data) => api.post('/auth/register', data),
  login:      (data) => api.post('/auth/login', data),
  adminLogin: (data) => api.post('/auth/admin/login', data),
};

// ─── User ─────────────────────────────────────────────────────────────────────
export const userService = {
  getProfile:      ()     => api.get('/users/profile'),
  updateProfile:   (data) => api.put('/users/profile', data),
  changePassword:  (data) => api.put('/users/change-password', data),
};

// ─── Blog ─────────────────────────────────────────────────────────────────────
export const blogService = {
  getAll:    (params) => api.get('/blogs', { params }),
  getBySlug: (slug)   => api.get(`/blogs/${slug}`),
  getRecent: (limit = 4) => api.get('/blogs/recent', { params: { limit } }),
};

// ─── Banners ──────────────────────────────────────────────────────────────────
export const bannerService = {
  getHomeBanners: ()     => api.get('/banners/home'),
  getVideos:      ()     => api.get('/banners/videos'),
  getExtraBanners:(type) => api.get('/banners/extra', { params: type ? { type } : {} }),
};

// ─── Reviews ──────────────────────────────────────────────────────────────────
export const reviewService = {
  getAll: () => api.get('/reviews'),
};

// ─── Promo codes ──────────────────────────────────────────────────────────────
export const promoService = {
  validate: (data) => api.post('/promos/validate', data),
};

// ─── Enquiries ────────────────────────────────────────────────────────────────
export const enquiryService = {
  submitEnquiry:        (data) => api.post('/enquiries', data),
  submitProductEnquiry: (data) => api.post('/enquiries/product', data),
};

// ─── Newsletter ───────────────────────────────────────────────────────────────
export const newsletterService = {
  subscribe: (email) => api.post('/newsletter/subscribe', { email }),
};

// ─── Search ───────────────────────────────────────────────────────────────────
export const searchService = {
  search:       (q, params) => api.get('/search', { params: { q, ...params } }),
  autocomplete: (term)      => api.get('/search/autocomplete', { params: { term } }),
};

// ─── Settings ─────────────────────────────────────────────────────────────────
export const settingsService = {
  get:        ()     => api.get('/settings'),
  checkPin:   (code) => api.get(`/settings/pin/${code}`),
  getGallery: (pid)  => api.get(`/settings/gallery/${pid}`),
  getPrices:  (pid)  => api.get(`/settings/prices/${pid}`),
  getColors:  (pid)  => api.get(`/settings/colors/${pid}`),
};
