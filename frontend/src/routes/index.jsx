import React, { lazy, Suspense } from 'react';
import { Routes, Route } from 'react-router-dom';
import Layout from '../components/layout/Layout';
import { PageLoader } from '../components/common/LoadingSpinner';
import NotFound from '../components/common/NotFound';

const Home            = lazy(() => import('../pages/Home'));
const Shop            = lazy(() => import('../pages/Shop'));
const ProductDetails  = lazy(() => import('../pages/ProductDetails'));
const CategoryProducts= lazy(() => import('../pages/CategoryProducts'));
const BrandProducts   = lazy(() => import('../pages/BrandProducts'));
const Cart            = lazy(() => import('../pages/Cart'));
const Checkout        = lazy(() => import('../pages/Checkout'));
const OrderSuccess    = lazy(() => import('../pages/OrderSuccess'));
const Wishlist        = lazy(() => import('../pages/Wishlist'));
const Login           = lazy(() => import('../pages/Login'));
const Register        = lazy(() => import('../pages/Register'));
const Dashboard       = lazy(() => import('../pages/Dashboard'));
const Search          = lazy(() => import('../pages/Search'));
const Blog            = lazy(() => import('../pages/Blog'));
const BlogDetails     = lazy(() => import('../pages/BlogDetails'));
const About           = lazy(() => import('../pages/About'));
const Contact         = lazy(() => import('../pages/Contact'));
const Privacy         = lazy(() => import('../pages/Privacy'));
const Terms           = lazy(() => import('../pages/Terms'));
const ReturnExchange  = lazy(() => import('../pages/ReturnExchange'));

export default function AppRoutes() {
  return (
    <Suspense fallback={<PageLoader />}>
      <Routes>
        <Route element={<Layout />}>
          <Route index element={<Home />} />
          <Route path="shop"              element={<Shop />} />
          <Route path="product/:slug"     element={<ProductDetails />} />
          <Route path="category/:slug"    element={<CategoryProducts />} />
          <Route path="brand/:slug"       element={<BrandProducts />} />
          <Route path="cart"              element={<Cart />} />
          <Route path="checkout"          element={<Checkout />} />
          <Route path="order-success"     element={<OrderSuccess />} />
          <Route path="wishlist"          element={<Wishlist />} />
          <Route path="login"             element={<Login />} />
          <Route path="register"          element={<Register />} />
          <Route path="dashboard"         element={<Dashboard />} />
          <Route path="search"            element={<Search />} />
          <Route path="blog"              element={<Blog />} />
          <Route path="blog/:slug"        element={<BlogDetails />} />
          <Route path="about"             element={<About />} />
          <Route path="contact"           element={<Contact />} />
          <Route path="privacy"           element={<Privacy />} />
          <Route path="terms"             element={<Terms />} />
          <Route path="return-exchange"   element={<ReturnExchange />} />
          <Route path="*"                 element={<NotFound />} />
        </Route>
      </Routes>
    </Suspense>
  );
}
