'use strict';
require('dotenv').config();

const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const cookieParser = require('cookie-parser');
const path = require('path');
const fs = require('fs');

const { rateLimiter } = require('./middlewares/rateLimiter');
const errorHandler = require('./middlewares/errorHandler');

const app = express();
const PORT = process.env.PORT || 5000;

// Ensure uploads directory exists
const uploadsDir = path.join(__dirname, process.env.UPLOAD_DIR || 'uploads');
if (!fs.existsSync(uploadsDir)) fs.mkdirSync(uploadsDir, { recursive: true });

// ─── Security ───────────────────────────────────────────────────────────────
app.use(helmet({ crossOriginResourcePolicy: { policy: 'cross-origin' } }));

// ─── CORS ────────────────────────────────────────────────────────────────────
const allowedOrigins = (process.env.CLIENT_URL || 'http://localhost:5173').split(',');
app.use(cors({
  origin: (origin, cb) => {
    if (!origin || allowedOrigins.includes(origin)) return cb(null, true);
    cb(new Error('Not allowed by CORS'));
  },
  credentials: true,
  methods: ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS'],
  allowedHeaders: ['Content-Type', 'Authorization', 'X-Cart-Cookie']
}));

// ─── Rate Limiting ───────────────────────────────────────────────────────────
app.use('/api/', rateLimiter);

// ─── Body parsing ────────────────────────────────────────────────────────────
app.use(express.json({ limit: '10mb' }));
app.use(express.urlencoded({ extended: true, limit: '10mb' }));
app.use(cookieParser());

// ─── Static files ────────────────────────────────────────────────────────────
app.use('/uploads', express.static(uploadsDir));

// ─── Routes ──────────────────────────────────────────────────────────────────
app.use('/api/auth',          require('./routes/authRoutes'));
app.use('/api/users',         require('./routes/userRoutes'));
app.use('/api/products',      require('./routes/productRoutes'));
app.use('/api/categories',    require('./routes/categoryRoutes'));
app.use('/api/brands',        require('./routes/brandRoutes'));
app.use('/api/cart',          require('./routes/cartRoutes'));
app.use('/api/wishlist',      require('./routes/wishlistRoutes'));
app.use('/api/orders',        require('./routes/orderRoutes'));
app.use('/api/blogs',         require('./routes/blogRoutes'));
app.use('/api/banners',       require('./routes/bannerRoutes'));
app.use('/api/reviews',       require('./routes/reviewRoutes'));
app.use('/api/promos',        require('./routes/promoRoutes'));
app.use('/api/offers',        require('./routes/offerRoutes'));
app.use('/api/enquiries',     require('./routes/enquiryRoutes'));
app.use('/api/newsletter',    require('./routes/newsletterRoutes'));
app.use('/api/search',        require('./routes/searchRoutes'));
app.use('/api/settings',      require('./routes/settingsRoutes'));
app.use('/api/payment',       require('./routes/paymentRoutes'));
app.use('/api/admin',         require('./routes/adminRoutes'));

// ─── Health check ─────────────────────────────────────────────────────────────
app.get('/api/health', (req, res) => {
  res.json({ status: 'ok', timestamp: new Date().toISOString(), env: process.env.NODE_ENV });
});

// ─── 404 ──────────────────────────────────────────────────────────────────────
app.use((req, res) => {
  res.status(404).json({ success: false, message: `Route ${req.originalUrl} not found` });
});

// ─── Global error handler ────────────────────────────────────────────────────
app.use(errorHandler);

// ─── Start ───────────────────────────────────────────────────────────────────
app.listen(PORT, () => {
  console.log(`\n🚀 RNV Sports API running on port ${PORT}`);
  console.log(`📍 http://localhost:${PORT}/api`);
  console.log(`🌍 Environment: ${process.env.NODE_ENV || 'development'}\n`);
});

module.exports = app;
