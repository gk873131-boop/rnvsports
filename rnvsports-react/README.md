# RNV Sports — E-Commerce Platform

A full-stack e-commerce application for sports and gym equipment, built with React 18 + Vite frontend and Node.js + Express backend.

## Project Structure

```
rnvsports-react/
├── frontend/          # React 18 + Vite + React Router DOM
├── backend/           # Node.js + Express + MySQL2 + JWT
└── README.md
```

## Tech Stack

### Frontend
- React 18 with Vite 5
- React Router DOM 6 (lazy-loaded routes)
- Axios with auth + cart cookie interceptors
- React Helmet Async for SEO
- Context API for state management (Auth, Cart, Wishlist)
- React Icons

### Backend
- Node.js + Express 4
- MySQL2 with connection pooling
- JWT authentication with bcrypt password hashing
- Multer file uploads
- Helmet + CORS + rate limiting
- PhonePe payment gateway integration
- Cookie-based guest cart system
- Soft-delete pattern across all tables

## Getting Started

### Prerequisites
- Node.js >= 18
- MySQL database

### Backend Setup
```bash
cd rnvsports-react/backend
npm install
cp .env.example .env    # Edit database credentials
npm start
```

The API runs on `http://localhost:5000/api`.

### Frontend Setup
```bash
cd rnvsports-react/frontend
npm install
npm run dev
```

The dev server runs on `http://localhost:5173` and proxies `/api` and `/uploads` to the backend.

### Production Build
```bash
cd rnvsports-react/frontend
npm run build
```

## Features
- Product catalog with categories, brands, and search
- Product details with image gallery, size selection, reviews
- Shopping cart (guest + authenticated)
- Wishlist
- Checkout with PhonePe payment integration
- User dashboard with order history and profile management
- Blog with article details
- Admin panel with full CRUD for products, categories, brands, blogs, banners, orders, and more
- Responsive design across all viewport sizes
- SEO optimization with meta tags and structured data

## API Endpoints
The backend exposes 80+ RESTful endpoints across 19 route groups:
- `/api/auth` — Register, login, admin login
- `/api/users` — Profile, password change
- `/api/products` — List, details, featured, search, price range
- `/api/categories` — List, by slug
- `/api/brands` — List, by slug
- `/api/cart` — Add, update, remove, clear (guest + auth)
- `/api/wishlist` — Add, remove, list
- `/api/orders` — Create, list, details
- `/api/blogs` — List, details, recent
- `/api/banners` — Home banners, videos, gallery
- `/api/reviews` — Product reviews
- `/api/promos` — Promo codes, validation
- `/api/offers` — Offers CRUD
- `/api/enquiries` — Contact and product enquiries
- `/api/newsletter` — Email subscription
- `/api/search` — Full-text search, autocomplete
- `/api/settings` — Site settings, pin codes, colors, prices
- `/api/payment` — PhonePe initiate, callback, status
- `/api/admin` — Admin dashboard, full CRUD for all entities

## License
Proprietary. RNV Sports.
