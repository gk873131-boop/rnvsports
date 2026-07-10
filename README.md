# RNV Sports - E-Commerce Application

A full-stack e-commerce application for RNV Sports (sports/gym equipment supplier in India), converted from PHP/MySQL to React + Node.js/Express.

## Architecture

```
project/
├── frontend/    # React 18 + Vite + React Router + Axios
├── backend/     # Node.js + Express + MySQL2 + JWT
└── README.md    # This file
```

## Prerequisites

- **Node.js** 18+ and npm
- **MySQL** 5.7+ (or MariaDB 10.3+)

## Quick Start

### 1. Database Setup

```bash
# Create database
mysql -u root -p -e "CREATE DATABASE salvaind_rnvsports CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

# Import schema
mysql -u root -p salvaind_rnvsports < backend/database/schema.sql
```

### 2. Backend Setup

```bash
cd backend
npm install
cp .env.example .env
# Edit .env with your database credentials
npm run dev    # Starts on http://localhost:5000
```

Default admin credentials: `admin` / `admin123`

### 3. Frontend Setup

```bash
cd frontend
npm install
cp .env.example .env
npm run dev    # Starts on http://localhost:5173
```

### 4. Access the Application

- **Frontend**: http://localhost:5173
- **Backend API**: http://localhost:5000/api
- **API Health Check**: http://localhost:5000/api/health

## Features

### Customer-Facing
- Product browsing with category/brand filters and price range
- Product detail pages with image gallery, size selection, quantity picker
- Shopping cart (works for anonymous and authenticated users)
- Checkout with billing form and order placement
- User authentication (register/login with JWT)
- User dashboard (profile, orders, settings)
- Wishlist (requires login)
- Blog with article details
- Search functionality
- Contact form
- Newsletter subscription
- Responsive design for mobile, tablet, desktop

### Admin Panel (via API)
- Dashboard with statistics (orders, sales, products)
- Full CRUD for products, categories, brands, blogs, reviews, banners, promos
- Order management (list, update status)
- Enquiry management
- Employee and supplier management

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Frontend | React 18, Vite 5, React Router DOM 6, Axios, React Helmet Async, React Icons |
| Backend | Node.js, Express, MySQL2, JWT, bcryptjs, Multer, Helmet, CORS, Rate Limiting |
| Database | MySQL (utf8mb4) with soft-delete pattern |

## Key Design Decisions

1. **Soft Deletes**: All tables use `status` column (1=active, 0=deleted) — no data is ever permanently removed
2. **Anonymous Cart**: Uses `X-Cart-Cookie` header for users without accounts; cart merges on login
3. **JWT Auth**: Stateless authentication with 7-day expiry; stored in localStorage
4. **Code Splitting**: All pages lazy-loaded with React.lazy + Suspense
5. **Generic CRUD**: Backend uses a factory pattern for admin CRUD operations
6. **Image URLs**: Backend serves `/uploads/` statically; frontend prepends BASE_URL

## API Documentation

See [backend/README.md](./backend/README.md) for complete API endpoint documentation.

## Frontend Documentation

See [frontend/README.md](./frontend/README.md) for frontend architecture and component details.

## License

Proprietary - RNV Sports (Hiralal Surgicals), Delhi, India
