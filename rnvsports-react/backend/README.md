# RNV Sports - Backend (Node.js + Express + MySQL)

A RESTful API backend that replicates all functionality from the original PHP/MySQL e-commerce application for RNV Sports.

## Tech Stack

- **Node.js + Express** - Web framework
- **MySQL2** - MySQL driver with connection pooling (utf8mb4)
- **JWT** - JSON Web Token authentication
- **bcryptjs** - Password hashing
- **Multer** - File upload middleware
- **Helmet** - HTTP security headers
- **Express Rate Limit** - API rate limiting
- **CORS** - Cross-origin resource sharing
- **Slugify** - URL slug generation

## Quick Start

```bash
# Install dependencies
npm install

# Create environment file
cp .env.example .env

# Edit .env with your database credentials
# DB_HOST, DB_USER, DB_PASSWORD, DB_NAME, JWT_SECRET, etc.

# Start development server (with auto-reload)
npm run dev

# Start production server
npm start
```

## Environment Configuration

Create a `.env` file based on `.env.example`:

```env
# Server
PORT=5000
NODE_ENV=development

# Database
DB_HOST=127.0.0.1
DB_PORT=3306
DB_USER=root
DB_PASSWORD=
DB_NAME=salvaind_rnvsports

# JWT
JWT_SECRET=your-secret-key-change-this
JWT_EXPIRES_IN=7d

# CORS
CLIENT_URL=http://localhost:5173

# File Upload
BASE_URL=http://localhost:5000
```

## Database Setup

1. Create a MySQL database named `salvaind_rnvsports`
2. Import the schema: `mysql -u root -p salvaind_rnvsports < database/schema.sql`
3. The server auto-creates a default admin on first run:
   - Username: `admin`
   - Password: `admin123`

## Project Structure

```
backend/
├── database/
│   └── schema.sql          # All table definitions (~30 tables)
├── src/
│   ├── config/
│   │   ├── database.js     # MySQL2 connection pool
│   │   └── setupDatabase.js# Auto-init + default admin
│   ├── controllers/        # Business logic
│   │   ├── adminController.js
│   │   ├── authController.js
│   │   ├── bannerController.js
│   │   ├── blogController.js
│   │   ├── brandController.js
│   │   ├── cartController.js
│   │   ├── categoryController.js
│   │   ├── enquiryController.js
│   │   ├── newsletterController.js
│   │   ├── orderController.js
│   │   ├── productController.js
│   │   ├── promoController.js
│   │   ├── reviewController.js
│   │   ├── searchController.js
│   │   ├── settingsController.js
│   │   └── wishlistController.js
│   ├── middleware/
│   │   ├── auth.js         # JWT verify, requireAdmin, optionalAuth
│   │   ├── helpers.js      # asyncHandler, paginate, buildWhere
│   │   └── makeRouter.js   # Generic CRUD router factory
│   └── routes/             # Route definitions
│       ├── adminRoutes.js
│       ├── authRoutes.js
│       ├── bannerRoutes.js
│       ├── blogRoutes.js
│       ├── cartRoutes.js
│       ├── categoryRoutes.js
│       ├── enquiryRoutes.js
│       ├── newsletterRoutes.js
│       ├── orderRoutes.js
│       ├── productRoutes.js
│       ├── promoRoutes.js
│       ├── reviewRoutes.js
│       ├── searchRoutes.js
│       ├── settingsRoutes.js
│       ├── userRoutes.js
│       └── wishlistRoutes.js
├── .env.example
├── package.json
└── server.js               # Express app entry point
```

## API Endpoints

### Public Endpoints

#### Products
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/products` | List products (query: page, limit, category_id, brand_id, min_price, max_price, sort, search) |
| GET | `/api/products/:slug` | Get product by slug (includes gallery, sizes, colors) |
| GET | `/api/products/featured/limit` | Get featured products |
| GET | `/api/products/hot-selling/limit` | Get hot selling products |
| GET | `/api/products/new-arrivals/limit` | Get new arrivals |
| GET | `/api/products/category/:slug` | Get products by category slug |
| GET | `/api/products/brand/:slug` | Get products by brand slug |
| GET | `/api/products/:id/related` | Get related products |
| GET | `/api/search?q=` | Search products by name |

#### Categories & Brands
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/categories` | List all categories |
| GET | `/api/categories/:slug` | Get category by slug |
| GET | `/api/brands` | List all brands |
| GET | `/api/brands/:slug` | Get brand by slug |

#### Content
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/banners/home` | Get home banners |
| GET | `/api/banners/left` | Get left banners |
| GET | `/api/banners/right` | Get right banners |
| GET | `/api/blogs` | List blog posts |
| GET | `/api/blogs/:slug` | Get blog by slug |
| GET | `/api/reviews` | List reviews |
| GET | `/api/settings` | Get site settings (videos) |
| GET | `/api/promos` | List promo codes |
| POST | `/api/promos/validate` | Validate promo code |

#### Cart (Anonymous or Authenticated)
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/cart` | Get cart items (uses X-Cart-Cookie header or JWT) |
| POST | `/api/cart` | Add item to cart |
| PUT | `/api/cart/:id` | Update cart item quantity |
| DELETE | `/api/cart/:id` | Remove cart item |
| DELETE | `/api/cart` | Clear entire cart |

#### Orders
| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | `/api/orders` | Create order (optional auth) |
| GET | `/api/orders` | Get user orders (auth required) |
| GET | `/api/orders/:orderNo` | Get order details (auth required) |

#### Auth
| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | `/api/auth/register` | Register new customer |
| POST | `/api/auth/login` | Login customer |
| POST | `/api/auth/admin/login` | Login admin |
| GET | `/api/user/profile` | Get profile (auth) |
| PUT | `/api/user/profile` | Update profile (auth) |
| PUT | `/api/user/password` | Change password (auth) |

#### Wishlist (Auth Required)
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/wishlist` | Get wishlist items |
| POST | `/api/wishlist` | Add product to wishlist |
| DELETE | `/api/wishlist/:id` | Remove from wishlist |

#### Forms
| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | `/api/enquiry` | Submit contact enquiry |
| POST | `/api/enquiry/product` | Submit product enquiry |
| POST | `/api/newsletter/subscribe` | Subscribe to newsletter |

### Admin Endpoints (JWT + Admin Role Required)

All admin routes are prefixed with `/api/admin` and require `Authorization: Bearer <token>` header.

#### Dashboard
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/admin/dashboard` | Dashboard statistics |

#### CRUD Operations
Generic CRUD for: products, categories, brands, blogs, reviews, banners, promos, employees, suppliers

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/admin/:resource` | List all (with pagination) |
| GET | `/api/admin/:resource/:id` | Get by ID |
| POST | `/api/admin/:resource` | Create |
| PUT | `/api/admin/:resource/:id` | Update |
| DELETE | `/api/admin/:resource/:id` | Soft delete (status=0) |

#### Orders
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/admin/orders` | List all orders |
| PUT | `/api/admin/orders/:orderNo/status` | Update order status |

#### Enquiries
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/admin/enquiries` | List enquiries |
| DELETE | `/api/admin/enquiries/:id` | Delete enquiry |

#### Settings
| Method | Endpoint | Description |
|--------|----------|-------------|
| PUT | `/api/admin/settings` | Update site settings |
| PUT | `/api/admin/password` | Change admin password |

## Authentication

### JWT Flow
1. **Register/Login** → Returns JWT token
2. **Client stores token** in localStorage
3. **Axios interceptor** attaches `Authorization: Bearer <token>` to requests
4. **verifyToken middleware** validates token on protected routes
5. **requireAdmin middleware** checks user role for admin routes

### Anonymous Cart
1. Client generates random cookie ID
2. Sent as `X-Cart-Cookie` header
3. Server creates/updates cart items with `product_cookie` field
4. Server returns `X-Cart-Cookie` header for persistence

## Database Schema

Key tables (all use soft-delete with `status` column):

- `tbl_category` - Product categories
- `tbl_brand` - Product brands
- `tbl_product` - Product catalog (with slug, prices, flags: featured, special, new_arrival)
- `tbl_product_gallery` - Additional product images
- `tbl_price` - Size-based pricing (age, regular_price, price)
- `tbl_color` - Product colors
- `tbl_customer` - User profiles
- `tbl_cart` - Shopping cart (user_id OR product_cookie)
- `tbl_wishlist` - Wishlist items (user_id required)
- `tbl_order_management` - Orders with order_no grouping
- `tbl_promo` - Promo codes with expiry
- `tbl_home_banner` / `tbl_left_banner` / `tbl_right_banner` - Banner images
- `tbl_blog` - Blog posts
- `tbl_adm_review` - Customer reviews
- `tbl_employee` - Staff accounts
- `tbl_enquiry` / `tbl_product_enquiry` - Contact form submissions
- `tbl_newsletter` - Email subscribers
- `tbl_video` - Homepage video links
- `tbl_admin` - Admin users

## Security

- **Helmet** - Sets security headers (X-Content-Type-Options, X-Frame-Options, etc.)
- **CORS** - Configured to allow only CLIENT_URL origin
- **Rate Limiting** - 100 requests per 15 minutes per IP
- **bcryptjs** - Passwords hashed with bcrypt (10 rounds)
- **JWT** - Stateless auth with configurable expiry
- **SQL Injection** - MySQL2 prepared statements with parameterized queries

## License

Proprietary - RNV Sports (Hiralal Surgicals)
