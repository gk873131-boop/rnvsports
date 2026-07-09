import { lazy, Suspense } from 'react';
import { RouteObject } from 'react-router-dom';
import Layout from '../components/layout/Layout';
import NotFound from '../components/common/NotFound';

const PageLoader = () => (
  <div className="min-h-[60vh] flex items-center justify-center">
    <div className="animate-spin w-12 h-12 border-4 border-[#ee7203] border-t-transparent rounded-full" />
  </div>
);

const lazyLoad = (importFn) => {
  const Component = lazy(importFn);
  return (
    <Suspense fallback={<PageLoader />}>
      <Component />
    </Suspense>
  );
};

export const routes: RouteObject[] = [
  {
    path: '/',
    element: <Layout />,
    children: [
      {
        index: true,
        element: lazyLoad(() => import('../pages/Home')),
      },
      {
        path: 'shop',
        element: lazyLoad(() => import('../pages/Shop')),
      },
      {
        path: 'product/:slug',
        element: lazyLoad(() => import('../pages/ProductDetails')),
      },
      {
        path: 'category/:slug',
        element: lazyLoad(() => import('../pages/Shop')),
      },
      {
        path: 'brand/:slug',
        element: lazyLoad(() => import('../pages/Shop')),
      },
      {
        path: 'cart',
        element: lazyLoad(() => import('../pages/Cart')),
      },
      {
        path: 'checkout',
        element: lazyLoad(() => import('../pages/Checkout')),
      },
      {
        path: 'order-success',
        element: lazyLoad(() => import('../pages/OrderSuccess')),
      },
      {
        path: 'wishlist',
        element: lazyLoad(() => import('../pages/Wishlist')),
      },
      {
        path: 'login',
        element: lazyLoad(() => import('../pages/Login')),
      },
      {
        path: 'register',
        element: lazyLoad(() => import('../pages/Register')),
      },
      {
        path: 'dashboard',
        element: lazyLoad(() => import('../pages/Dashboard')),
      },
      {
        path: 'about',
        element: lazyLoad(() => import('../pages/About')),
      },
      {
        path: 'contact',
        element: lazyLoad(() => import('../pages/Contact')),
      },
      {
        path: 'search',
        element: lazyLoad(() => import('../pages/Search')),
      },
      {
        path: 'blog',
        element: lazyLoad(() => import('../pages/Blog')),
      },
      {
        path: 'blog/:slug',
        element: lazyLoad(() => import('../pages/BlogDetails')),
      },
      {
        path: 'privacy',
        element: lazyLoad(() => import('../pages/Privacy')),
      },
      {
        path: 'terms',
        element: lazyLoad(() => import('../pages/Terms')),
      },
      {
        path: 'return-exchange',
        element: lazyLoad(() => import('../pages/ReturnExchange')),
      },
      {
        path: '*',
        element: <NotFound />,
      },
    ],
  },
];

export default routes;
