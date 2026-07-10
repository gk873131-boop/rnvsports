import { lazy, Suspense } from 'react'
import { BrowserRouter, Routes, Route } from 'react-router-dom'
import { AuthProvider, CartProvider, WishlistProvider } from './context/Context'
import Layout from './components/layout/Layout'
import NotFound from './components/common/NotFound'
import ScrollToTop from './components/common/ScrollToTop'

const Home = lazy(() => import('./pages/Home'))
const Shop = lazy(() => import('./pages/Shop'))
const ProductDetails = lazy(() => import('./pages/ProductDetails'))
const Cart = lazy(() => import('./pages/Cart'))
const Checkout = lazy(() => import('./pages/Checkout'))
const Login = lazy(() => import('./pages/Login'))
const Register = lazy(() => import('./pages/Register'))
const Dashboard = lazy(() => import('./pages/Dashboard'))
const About = lazy(() => import('./pages/About'))
const Contact = lazy(() => import('./pages/Contact'))
const Search = lazy(() => import('./pages/Search'))
const Privacy = lazy(() => import('./pages/Privacy'))
const Terms = lazy(() => import('./pages/Terms'))
const ReturnExchange = lazy(() => import('./pages/ReturnExchange'))
const Wishlist = lazy(() => import('./pages/Wishlist'))
const Blog = lazy(() => import('./pages/Blog'))
const BlogDetails = lazy(() => import('./pages/BlogDetails'))
const OrderSuccess = lazy(() => import('./pages/OrderSuccess'))

const PageLoader = () => (
  <div className="min-h-[60vh] flex items-center justify-center">
    <div className="animate-spin w-12 h-12 border-4 border-[#ee7203] border-t-transparent rounded-full"></div>
  </div>
)

function App() {
  return (
    <BrowserRouter>
      <AuthProvider>
        <CartProvider>
          <WishlistProvider>
            <ScrollToTop />
            <Suspense fallback={<PageLoader />}>
              <Routes>
                <Route path="/" element={<Layout />}>
                  <Route index element={<Home />} />
                  <Route path="shop" element={<Shop />} />
                  <Route path="product/:slug" element={<ProductDetails />} />
                  <Route path="category/:slug" element={<Shop />} />
                  <Route path="brand/:slug" element={<Shop />} />
                  <Route path="cart" element={<Cart />} />
                  <Route path="checkout" element={<Checkout />} />
                  <Route path="order-success" element={<OrderSuccess />} />
                  <Route path="wishlist" element={<Wishlist />} />
                  <Route path="blog" element={<Blog />} />
                  <Route path="blog/:slug" element={<BlogDetails />} />
                  <Route path="login" element={<Login />} />
                  <Route path="register" element={<Register />} />
                  <Route path="dashboard" element={<Dashboard />} />
                  <Route path="about" element={<About />} />
                  <Route path="contact" element={<Contact />} />
                  <Route path="search" element={<Search />} />
                  <Route path="privacy" element={<Privacy />} />
                  <Route path="terms" element={<Terms />} />
                  <Route path="return-exchange" element={<ReturnExchange />} />
                  <Route path="*" element={<NotFound />} />
                </Route>
              </Routes>
            </Suspense>
          </WishlistProvider>
        </CartProvider>
      </AuthProvider>
    </BrowserRouter>
  )
}

export default App
