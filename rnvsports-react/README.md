# RNV Sports - React E-Commerce Application

A modern, production-ready e-commerce application built with React, Vite, and Tailwind CSS. Originally converted from a PHP/MySQL application.

## Features

- Home page with hero slider, featured products, categories, and brands
- Product listing with filtering and pagination
- Product detail page with image gallery, size/color selection
- Shopping cart with quantity management
- Checkout with order summary
- User authentication (login/register)
- User dashboard with profile and orders
- Wishlist functionality
- Search functionality
- Responsive design for all devices

## Tech Stack

- **React 19** - UI library
- **Vite 8** - Build tool
- **Tailwind CSS 4** - Styling
- **React Router DOM 7** - Routing
- **Supabase** - Backend (database, auth)
- **Framer Motion** - Animations
- **React Icons** - Icon library
- **Axios** - HTTP client

## Getting Started

### Prerequisites

- Node.js 18+
- npm 9+

### Installation

1. Clone the repository

```bash
git clone <repository-url>
cd rnvsports-react
```

2. Install dependencies

```bash
npm install
```

3. Create environment file

```bash
cp .env.example .env
```

Update `.env` with your Supabase credentials:

```
VITE_SUPABASE_URL=your_supabase_project_url
VITE_SUPABASE_ANON_KEY=your_supabase_anon_key
```

4. Start development server

```bash
npm run dev
```

5. Build for production

```bash
npm run build
```

## Project Structure

```
src/
├── components/
│   ├── common/          # Shared components (ProductCard, EmptyState, NotFound)
│   ├── home/            # Home page sections
│   └── layout/          # Layout components (Navbar, Footer)
├── context/             # React Context providers
│   └── Context.jsx      # Auth, Cart, Wishlist contexts
├── pages/               # Page components
│   ├── Home.jsx
│   ├── Shop.jsx
│   ├── ProductDetails.jsx
│   ├── Cart.jsx
│   ├── Checkout.jsx
│   ├── Login.jsx
│   ├── Register.jsx
│   ├── Dashboard.jsx
│   └── ...
├── services/            # API services
│   ├── api.js           # All API functions
│   └── supabase.js      # Supabase client
├── App.jsx              # Main app with routes
├── main.jsx             # Entry point
└── index.css            # Global styles
```

## Available Routes

| Route | Description |
|-------|-------------|
| `/` | Home page |
| `/shop` | Product listing |
| `/product/:slug` | Product details |
| `/category/:slug` | Products by category |
| `/brand/:slug` | Products by brand |
| `/cart` | Shopping cart |
| `/checkout` | Checkout page |
| `/login` | Login page |
| `/register` | Registration page |
| `/dashboard` | User dashboard |
| `/about` | About page |
| `/contact` | Contact page |
| `/search` | Search page |
| `/privacy` | Privacy policy |
| `/terms` | Terms & conditions |
| `/return-exchange` | Return policy |

## Database Schema (Supabase)

The application uses Supabase with the following tables:

- `products` - Product catalog
- `categories` - Product categories
- `brands` - Product brands
- `product_gallery` - Product images
- `product_sizes` - Size variants
- `product_colors` - Color variants
- `customers` - User profiles
- `cart` - Shopping cart items
- `wishlist` - Wishlist items
- `orders` - Customer orders
- `order_items` - Order line items
- `promos` - Promotional codes
- `banners` - Homepage banners
- `blogs` - Blog posts
- `reviews` - Product reviews
- `enquiries` - Contact form submissions
- `newsletters` - Newsletter subscribers
- `site_settings` - Site configuration

## License

This project is proprietary software for RNV Sports.

## Support

For support, contact: info@rnvsports.com
