import supabase from './supabase';

export const productService = {
  async getAll({ page = 1, limit = 12, categoryId, brandId, minPrice, maxPrice, sortBy, search } = {}) {
    let query = supabase
      .from('products')
      .select('*, category:categories(*), brand:brands(*)', { count: 'exact' })
      .eq('status', true);

    if (categoryId) query = query.eq('category_id', categoryId);
    if (brandId) query = query.eq('brand_id', brandId);
    if (minPrice !== undefined) query = query.gte('sale_price', minPrice);
    if (maxPrice !== undefined) query = query.lte('sale_price', maxPrice);
    if (search) query = query.or(`name.ilike.%${search}%,code.ilike.%${search}%`);

    switch (sortBy) {
      case 'name-asc': query = query.order('name', { ascending: true }); break;
      case 'name-desc': query = query.order('name', { ascending: false }); break;
      case 'price-asc': query = query.order('sale_price', { ascending: true }); break;
      case 'price-desc': query = query.order('sale_price', { ascending: false }); break;
      default: query = query.order('created_at', { ascending: false });
    }

    const from = (page - 1) * limit;
    query = query.range(from, from + limit - 1);

    const { data, error, count } = await query;
    if (error) throw error;
    return { products: data, total: count, totalPages: Math.ceil(count / limit) };
  },

  async getBySlug(slug) {
    const { data, error } = await supabase
      .from('products').select('*, category:categories(*), brand:brands(*)')
      .eq('slug', slug).eq('status', true).maybeSingle();
    if (error) throw error;
    return data;
  },

  async getFeatured(limit = 8) {
    const { data, error } = await supabase.from('products')
      .select('*, category:categories(*), brand:brands(*)').eq('status', true).eq('featured', true).limit(limit);
    if (error) throw error;
    return data;
  },

  async getHotSelling(limit = 8) {
    const { data, error } = await supabase.from('products')
      .select('*, category:categories(*), brand:brands(*)').eq('status', true).eq('special', true).limit(limit);
    if (error) throw error;
    return data;
  },

  async getNewArrivals(limit = 8) {
    const { data, error } = await supabase.from('products')
      .select('*, category:categories(*), brand:brands(*)').eq('status', true).eq('new_arrival', true).limit(limit);
    if (error) throw error;
    return data;
  },

  async getHandPicked(limit = 8) {
    const { data, error } = await supabase.from('products')
      .select('*, category:categories(*), brand:brands(*)').eq('status', true).eq('category_list', true).limit(limit);
    if (error) throw error;
    return data;
  },

  async getGallery(productId) {
    const { data, error } = await supabase.from('product_gallery').select('*').eq('product_id', productId).eq('status', true);
    if (error) throw error;
    return data;
  },

  async getSizes(productId) {
    const { data, error } = await supabase.from('product_sizes').select('*').eq('product_id', productId).eq('status', true);
    if (error) throw error;
    return data;
  },

  async getColors(productId) {
    const { data, error } = await supabase.from('product_colors').select('*').eq('product_id', productId).eq('status', true);
    if (error) throw error;
    return data;
  },

  async search(query, limit = 10) {
    const { data, error } = await supabase.from('products')
      .select('id, name, slug, featured_image, sale_price, regular_price')
      .eq('status', true).or(`name.ilike.%${query}%,code.ilike.%${query}%`).limit(limit);
    if (error) throw error;
    return data;
  },

  async getPriceRange() {
    const { data, error } = await supabase.from('products').select('sale_price').eq('status', true).order('sale_price');
    if (error) throw error;
    if (!data || data.length === 0) return { min: 0, max: 10000 };
    const prices = data.map(p => p.sale_price || 0);
    return { min: Math.floor(Math.min(...prices)), max: Math.ceil(Math.max(...prices)) };
  },

  async getRelated(productId, categoryId, limit = 8) {
    const { data, error } = await supabase.from('products')
      .select('*, category:categories(*), brand:brands(*)')
      .eq('status', true).eq('category_id', categoryId).neq('id', productId).limit(limit);
    if (error) throw error;
    return data;
  }
};

export const categoryService = {
  async getAll() {
    const { data, error } = await supabase.from('categories').select('*').eq('status', true).order('name');
    if (error) throw error;
    return data;
  },
  async getBySlug(slug) {
    const { data, error } = await supabase.from('categories').select('*').eq('slug', slug).eq('status', true).maybeSingle();
    if (error) throw error;
    return data;
  }
};

export const brandService = {
  async getAll() {
    const { data, error } = await supabase.from('brands').select('*').eq('status', true).order('title');
    if (error) throw error;
    return data;
  }
};

export const cartService = {
  async getCart(userId = null, cookieId = null) {
    let query = supabase.from('cart')
      .select('*, product:products(*, category:categories(*), brand:brands(*)), size:product_sizes(*), color:product_colors(*)')
      .eq('status', true);
    if (userId) query = query.eq('user_id', userId);
    else if (cookieId) query = query.eq('cookie_id', cookieId);
    const { data, error } = await query;
    if (error) throw error;
    return data || [];
  },

  async addItem({ productId, quantity = 1, sizeId, colorId, price, userId = null, cookieId = null }) {
    const cartData = { product_id: productId, quantity, price, status: true };
    if (userId) cartData.user_id = userId;
    else cartData.cookie_id = cookieId;
    if (sizeId) cartData.size_id = sizeId;
    if (colorId) cartData.color_id = colorId;
    const { data, error } = await supabase.from('cart').insert(cartData).select().single();
    if (error) throw error;
    return data;
  },

  async updateItem(cartId, quantity) {
    const { data, error } = await supabase.from('cart').update({ quantity }).eq('id', cartId).select().single();
    if (error) throw error;
    return data;
  },

  async removeItem(cartId) {
    const { error } = await supabase.from('cart').update({ status: false }).eq('id', cartId);
    if (error) throw error;
  },

  async clearCart(userId = null, cookieId = null) {
    let query = supabase.from('cart').update({ status: false });
    if (userId) query = query.eq('user_id', userId);
    else if (cookieId) query = query.eq('cookie_id', cookieId);
    const { error } = await query;
    if (error) throw error;
  }
};

export const wishlistService = {
  async getByUser(userId) {
    const { data, error } = await supabase.from('wishlist')
      .select('*, product:products(*, category:categories(*), brand:brands(*)')
      .eq('user_id', userId).eq('status', true);
    if (error) throw error;
    return data || [];
  },

  async add({ userId, productId, price }) {
    const { data, error } = await supabase.from('wishlist').insert({ user_id: userId, product_id: productId, price, status: true }).select().single();
    if (error) throw error;
    return data;
  },

  async remove(wishlistId) {
    const { error } = await supabase.from('wishlist').update({ status: false }).eq('id', wishlistId);
    if (error) throw error;
  },

  async isInWishlist(userId, productId) {
    const { data, error } = await supabase.from('wishlist').select('id').eq('user_id', userId).eq('product_id', productId).eq('status', true).maybeSingle();
    if (error) throw error;
    return !!data;
  }
};

export const orderService = {
  async create({ userId, orderData, items }) {
    const orderNo = `ORD${Date.now()}${Math.floor(Math.random() * 1000)}`;
    const { data: order, error: orderError } = await supabase.from('orders').insert({
      order_no: orderNo, user_id: userId,
      customer_name: orderData.customerName, email: orderData.email, mobile: orderData.mobile,
      address: orderData.address, ship_name: orderData.shipName, ship_address: orderData.shipAddress,
      ship_city: orderData.shipCity, ship_state: orderData.shipState, ship_pincode: orderData.shipPincode,
      ship_country: orderData.shipCountry || 'India',
      price: orderData.subtotal, total_amount: orderData.total, discount: orderData.discount || 0,
      payment_mode: orderData.paymentMode, payment_status: 'pending', order_status: 'pending', status: true
    }).select().single();
    if (orderError) throw orderError;
    return order;
  },

  async getByUser(userId) {
    const { data, error } = await supabase.from('orders').select('*').eq('user_id', userId).order('created_at', { ascending: false });
    if (error) throw error;
    return data;
  }
};

export const authService = {
  async signUp({ email, password, firstName, lastName, mobile }) {
    const { data, error } = await supabase.auth.signUp({
      email, password,
      options: { data: { first_name: firstName, last_name: lastName, mobile } }
    });
    if (error) throw error;
    if (data.user) {
      await supabase.from('customers').insert({ id: data.user.id, email, first_name: firstName, last_name: lastName, mobile });
    }
    return data;
  },
  async signIn({ email, password }) {
    const { data, error } = await supabase.auth.signInWithPassword({ email, password });
    if (error) throw error;
    return data;
  },
  async signOut() {
    const { error } = await supabase.auth.signOut();
    if (error) throw error;
  },
  async getUser() {
    const { data: { user } } = await supabase.auth.getUser();
    return user;
  },
  async getProfile(userId) {
    const { data, error } = await supabase.from('customers').select('*').eq('id', userId).maybeSingle();
    if (error) throw error;
    return data;
  },
  async updateProfile(userId, updates) {
    const { data, error } = await supabase.from('customers').update(updates).eq('id', userId).select().single();
    if (error) throw error;
    return data;
  },
  onAuthStateChange(callback) {
    return supabase.auth.onAuthStateChange(callback);
  }
};

export const contentService = {
  async getBanners() {
    const { data, error } = await supabase.from('banners').select('*').eq('type', 'home').eq('status', true);
    if (error) throw error;
    return data;
  },
  async getCategories() {
    return categoryService.getAll();
  },
  async getBrands() {
    return brandService.getAll();
  },
  async getReviews() {
    const { data, error } = await supabase.from('reviews').select('*').eq('status', true);
    if (error) throw error;
    return data;
  },
  async submitEnquiry({ name, email, subject, message }) {
    const { data, error } = await supabase.from('enquiries').insert({ name, email, subject, message }).select().single();
    if (error) throw error;
    return data;
  },
  async subscribeEmail(email) {
    const { data, error } = await supabase.from('newsletters').insert({ email }).select().single();
    if (error) {
      if (error.code === '23505') return { success: true, message: 'Already subscribed!' };
      throw error;
    }
    return { success: true, message: 'Thank you for subscribing!' };
  },
  async getSiteSettings() {
    const { data, error } = await supabase.from('site_settings').select('*').limit(1).maybeSingle();
    if (error) throw error;
    return data;
  }
};
