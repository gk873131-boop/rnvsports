# RNV Sports - Frontend (React + Vite)

A production-ready React application converted from a PHP e-commerce website for RNV Sports (sports/gym equipment).

## Tech Stack

- **React 18** - UI library (functional components + hooks)
- **Vite 5** - Build tool with code splitting
- **React Router DOM 6** - Client-side routing
- **Axios** - HTTP client with interceptors
- **React Helmet Async** - SEO meta tags
- **React Icons** - Icon library (Feather icons)
- **JS-Cookie** - Cart cookie persistence for anonymous users

## Quick Start

```bash
# Install dependencies
npm install

# Create environment file
cp .env.example .env

# Start development server (runs on port 5173)
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## Environment Configuration

Create a `.env` file in the root:

```env
VITE_API_URL=http://localhost:5000/api
```

Update this to point to your backend server URL.

## Project Structure

```
frontend/
├── public/
│   └── images/          # Static images (logo, payment icons, etc.)
├── src/
│   ├── components/
│   │   ├── common/      # Reusable components
│   │   │   ├── EmptyState.jsx
│   │   │   ├── LoadingSpinner.jsx
│   │   │   ├── NotFound.jsx
│   │   │   ├── ProductCard.jsx
│   │   │   ├── ScrollToTop.jsx
│   │   │   └── SEO.jsx
│   │   ├── home/        # Home page sections
│   │   │   ├── HeroSlider.jsx
│   │   │   └── Sections.jsx
│   │   └── layout/      # Layout components
│   │       ├── Layout.jsx
│   │       ├── Navbar.jsx
│   │       └── Footer.jsx
│   ├── context/
│   │   └── Context.jsx  # Auth, Cart, Wishlist providers
│   ├── hooks/
│   │   └── index.js     # useProducts, useProduct, useDebounce, etc.
│   ├── pages/           # All page components
│   │   ├── Home.jsx
│   │   ├── Shop.jsx
│   │   ├── ProductDetails.jsx
│   │   ├── Cart.jsx
│   │   ├── Checkout.jsx
│   │   ├── OrderSuccess.jsx
│   │   ├── Login.jsx
│   │   ├── Register.jsx
│   │   ├── Dashboard.jsx
│   │   ├── Wishlist.jsx
│   │   ├── Blog.jsx
│   │   ├── BlogDetails.jsx
│   │   ├── About.jsx
│   │   ├── Contact.jsx
│   │   ├── Search.jsx
│   │   ├── Privacy.jsx
│   │   ├── Terms.jsx
│   │   └── ReturnExchange.jsx
│   ├── services/
│   │   ├── api.js       # Axios instance + interceptors
│   │   └── services.js  # API service modules
│   ├── styles/
│   │   └── components.css
│   ├── utils/
│   │   └── index.js     # formatPrice, calculateDiscount, getImageUrl, etc.
│   ├── App.jsx          # Routes + providers
│   ├── main.jsx         # Entry point
│   └── index.css        # Global styles + CSS variables
├── .env.example
├── index.html
├── package.json
└── vite.config.js
```

## Routes

| Route | Page | Description |
|-------|------|-------------|
| `/` | Home | Hero slider, featured products, categories, brands |
| `/shop` | Shop | Product listing with filters, sorting, pagination |
| `/product/:slug` | ProductDetails | Product gallery, sizes, add to cart, related products |
| `/category/:slug` | Shop | Products filtered by category |
| `/brand/:slug` | Shop | Products filtered by brand |
| `/cart` | Cart | Shopping cart with quantity controls |
| `/checkout` | Checkout | Billing form + order summary |
| `/order-success` | OrderSuccess | Order confirmation page |
| `/wishlist` | Wishlist | Saved products (requires login) |
| `/blog` | Blog | Blog post listing |
| `/blog/:slug` | BlogDetails | Full blog article |
| `/login` | Login | Email/password authentication |
| `/register` | Register | New account creation |
| `/dashboard` | Dashboard | User profile, orders, settings (protected) |
| `/about` | About | About company |
| `/contact` | Contact | Contact form + info |
| `/search?q=` | Search | Search results |
| `/privacy` | Privacy | Privacy policy |
| `/terms` | Terms | Terms & conditions |
| `/return-exchange` | ReturnExchange | Return policy |
| `*` | NotFound | 404 page |

## Key Features

### Authentication
- JWT-based auth with localStorage token persistence
- `AuthContext` provides user state, login/register/logout
- Protected routes redirect to `/login?redirect=...`

### Cart
- Supports both authenticated (user_id) and anonymous (cookie) users
- `CartContext` manages cart state, subtotal, item count
- Anonymous cart uses `X-Cart-Cookie` header persisted via js-cookie
- Free shipping over ₹500, flat ₹50 otherwise

### Wishlist
- Requires authentication
- `WishlistContext` with isInWishlist() helper

### State Management
- Three React Context providers: Auth, Cart, Wishlist
- Custom hooks: `useProducts`, `useProduct`, `useDebounce`, `useScrollToTop`

### API Communication
- Centralized Axios instance with request/response interceptors
- Auto-attaches JWT token and cart cookie to requests
- Handles 401 responses by clearing auth state

### Performance
- React.lazy + Suspense for code splitting (each page is a separate chunk)
- Vite manualChunks for react-vendor, icons, utils
- Skeleton loading states

### SEO
- React Helmet Async for per-page meta tags
- Semantic HTML structure

## Design System

CSS variables defined in `src/index.css`:

```css
--color-primary: #ee7203;       /* Orange */
--color-primary-dark: #d56602;
--color-secondary: #ff5b30;
--color-text-dark: #333;
--color-text-light: #666;
--color-bg-light: #f8f8f8;
--color-border: #e5e5e5;
--font-sans: 'Inter', sans-serif;
```

## Backend Requirements

This frontend requires the backend server running at the URL specified in `VITE_API_URL`. See `../backend/README.md` for backend setup instructions.

## License

Proprietary - RNV Sports (Hiralal Surgicals)
