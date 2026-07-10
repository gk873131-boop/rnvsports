require('dotenv').config();
const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const path = require('path');
const rateLimit = require('express-rate-limit');

const app = express();
const PORT = process.env.PORT || 5000;

// Security middleware
app.use(helmet({ crossOriginResourcePolicy: { policy: 'cross-origin' } }));

// CORS
app.use(cors({
  origin: process.env.CLIENT_URL || 'http://localhost:5173',
  credentials: true,
  methods: ['GET', 'POST', 'PUT', 'DELETE', 'PATCH'],
  allowedHeaders: ['Content-Type', 'Authorization']
}));

// Rate limiting
const limiter = rateLimit({ windowMs: 15 * 60 * 1000, max: 300, message: 'Too many requests' });
app.use('/api/', limiter);

// Body parsing
app.use(express.json({ limit: '10mb' }));
app.use(express.urlencoded({ extended: true, limit: '10mb' }));

// Static uploads
app.use('/uploads', express.static(path.join(__dirname, 'uploads')));

// Routes
app.use('/api/products',    require('./src/routes/productRoutes'));
app.use('/api/categories',  require('./src/routes/categoryRoutes'));
app.use('/api/brands',      require('./src/routes/brandRoutes'));
app.use('/api/cart',        require('./src/routes/cartRoutes'));
app.use('/api/wishlist',    require('./src/routes/wishlistRoutes'));
app.use('/api/orders',      require('./src/routes/orderRoutes'));
app.use('/api/auth',        require('./src/routes/authRoutes'));
app.use('/api/users',       require('./src/routes/userRoutes'));
app.use('/api/blogs',       require('./src/routes/blogRoutes'));
app.use('/api/banners',     require('./src/routes/bannerRoutes'));
app.use('/api/reviews',     require('./src/routes/reviewRoutes'));
app.use('/api/promos',      require('./src/routes/promoRoutes'));
app.use('/api/enquiries',   require('./src/routes/enquiryRoutes'));
app.use('/api/newsletter',  require('./src/routes/newsletterRoutes'));
app.use('/api/admin',       require('./src/routes/adminRoutes'));
app.use('/api/search',      require('./src/routes/searchRoutes'));
app.use('/api/settings',    require('./src/routes/settingsRoutes'));

// Health check
app.get('/api/health', (req, res) => {
  res.json({ status: 'ok', timestamp: new Date().toISOString(), env: process.env.NODE_ENV });
});

// 404 handler
app.use((req, res) => {
  res.status(404).json({ success: false, message: `Route ${req.originalUrl} not found` });
});

// Global error handler
app.use((err, req, res, next) => {
  console.error('Unhandled error:', err);
  res.status(err.status || 500).json({
    success: false,
    message: process.env.NODE_ENV === 'production' ? 'Internal server error' : err.message
  });
});

app.listen(PORT, () => {
  console.log(`\n🚀 RNV Sports Backend running on port ${PORT}`);
  console.log(`📍 API: http://localhost:${PORT}/api`);
  console.log(`🌍 Environment: ${process.env.NODE_ENV}\n`);
});

module.exports = app;
