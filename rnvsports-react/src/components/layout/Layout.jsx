import { useState } from 'react';
import { Link } from 'react-router-dom';
import { FiSearch, FiShoppingCart, FiHeart, FiUser, FiMenu, FiX, FiPhone } from 'react-icons/fi';
import { motion, AnimatePresence } from 'framer-motion';
import { useAuth, useCart, useWishlist } from '../../context/Context';

const Navbar = () => {
  const [mobileOpen, setMobileOpen] = useState(false);
  const [searchOpen, setSearchOpen] = useState(false);
  const [search, setSearch] = useState('');
  const { isAuthenticated, user, signOut } = useAuth();
  const { itemsCount } = useCart();
  const { itemsCount: wishlistCount } = useWishlist();

  const handleSearch = (e) => {
    e.preventDefault();
    if (search.trim()) window.location.href = `/search?q=${encodeURIComponent(search)}`;
  };

  return (
    <header className="sticky top-0 z-50 bg-white shadow-sm">
      <div className="bg-[#ee7203] text-white py-2">
        <div className="container text-sm flex items-center justify-between">
          <div className="flex items-center gap-4">
            <a href="tel:+919911820202" className="flex items-center gap-1 hover:opacity-80"><FiPhone /> +91-9911820202</a>
            <span className="hidden md:inline">| Mon-Sat, 11am-7pm</span>
          </div>
          <span className="hidden sm:block font-semibold">FREE SHIPPING ALL OVER INDIA</span>
        </div>
      </div>
      <div className="container flex items-center justify-between py-4 gap-4">
        <Link to="/" className="text-2xl font-bold text-[#ee7203]">RNV Sports</Link>
        <form onSubmit={handleSearch} className="hidden md:flex flex-1 max-w-md mx-4">
          <input type="text" value={search} onChange={(e) => setSearch(e.target.value)} placeholder="Search products..." className="w-full px-4 py-2 border rounded-l-lg focus:outline-none focus:border-[#ee7203]" />
          <button type="submit" className="px-4 py-2 bg-[#ee7203] text-white rounded-r-lg"><FiSearch /></button>
        </form>
        <div className="flex items-center gap-3">
          <button className="md:hidden p-2" onClick={() => setSearchOpen(!searchOpen)}><FiSearch /></button>
          <Link to="/wishlist" className="relative p-2"><FiHeart className="text-xl" />{wishlistCount > 0 && <span className="absolute -top-1 -right-1 w-5 h-5 bg-[#ee7203] text-white text-xs rounded-full flex items-center justify-center">{wishlistCount}</span>}</Link>
          <Link to="/cart" className="relative p-2"><FiShoppingCart className="text-xl" />{itemsCount > 0 && <span className="absolute -top-1 -right-1 w-5 h-5 bg-[#ee7203] text-white text-xs rounded-full flex items-center justify-center">{itemsCount}</span>}</Link>
          {isAuthenticated ? (
            <div className="relative group">
              <button className="p-2"><FiUser className="text-xl" /></button>
              <div className="absolute right-0 top-full hidden group-hover:block bg-white border rounded-lg shadow-lg min-w-[150px]">
                <Link to="/dashboard" className="block px-4 py-2 hover:bg-gray-50">Dashboard</Link>
                <button onClick={signOut} className="w-full text-left px-4 py-2 hover:bg-gray-50">Sign Out</button>
              </div>
            </div>
          ) : <Link to="/login" className="hidden sm:block px-4 py-2 bg-[#ee7203] text-white rounded-lg font-semibold">Login</Link>}
          <button className="lg:hidden p-2" onClick={() => setMobileOpen(!mobileOpen)}>{mobileOpen ? <FiX /> : <FiMenu />}</button>
        </div>
      </div>
      <AnimatePresence>
        {searchOpen && (
          <motion.div initial={{ height: 0 }} animate={{ height: 'auto' }} exit={{ height: 0 }} className="md:hidden border-t">
            <form onSubmit={handleSearch} className="container py-2 flex">
              <input type="text" value={search} onChange={(e) => setSearch(e.target.value)} placeholder="Search..." className="flex-1 px-4 py-2 border rounded-l-lg" />
              <button type="submit" className="px-4 py-2 bg-[#ee7203] text-white rounded-r-lg"><FiSearch /></button>
            </form>
          </motion.div>
        )}
      </AnimatePresence>
      <nav className="hidden lg:block border-t">
        <div className="container">
          <ul className="flex gap-6">
            <li><Link to="/" className="block py-3 font-medium hover:text-[#ee7203]">Home</Link></li>
            <li><Link to="/shop" className="block py-3 font-medium hover:text-[#ee7203]">Products</Link></li>
            <li><Link to="/about" className="block py-3 font-medium hover:text-[#ee7203]">About Us</Link></li>
            <li><Link to="/contact" className="block py-3 font-medium hover:text-[#ee7203]">Contact Us</Link></li>
            {isAuthenticated && <li><Link to="/dashboard" className="block py-3 font-medium hover:text-[#ee7203]">Dashboard</Link></li>}
          </ul>
        </div>
      </nav>
      <AnimatePresence>
        {mobileOpen && (
          <motion.div initial={{ x: '100%' }} animate={{ x: 0 }} exit={{ x: '100%' }} className="lg:hidden fixed inset-0 top-[140px] bg-white z-40">
            <nav className="container py-4">
              <ul className="space-y-2">
                <li><Link to="/" onClick={() => setMobileOpen(false)} className="block py-3 font-medium border-b">Home</Link></li>
                <li><Link to="/shop" onClick={() => setMobileOpen(false)} className="block py-3 font-medium border-b">Products</Link></li>
                <li><Link to="/about" onClick={() => setMobileOpen(false)} className="block py-3 font-medium border-b">About Us</Link></li>
                <li><Link to="/contact" onClick={() => setMobileOpen(false)} className="block py-3 font-medium border-b">Contact Us</Link></li>
                {!isAuthenticated && <li><Link to="/login" onClick={() => setMobileOpen(false)} className="block py-3 text-[#ee7203] font-semibold">Login / Register</Link></li>}
              </ul>
            </nav>
          </motion.div>
        )}
      </AnimatePresence>
    </header>
  );
};

const Footer = () => {
  const [email, setEmail] = useState('');
  const [msg, setMsg] = useState('');

  const handleSubscribe = async (e) => {
    e.preventDefault();
    if (!email) return;
    try {
      const res = await fetch(`${import.meta.env.VITE_SUPABASE_URL}/rest/v1/newsletters`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json', apikey: import.meta.env.VITE_SUPABASE_ANON_KEY, Prefer: 'return=minimal' },
        body: JSON.stringify({ email })
      });
      setMsg(res.ok ? 'Subscribed!' : 'Already subscribed');
    } catch { setMsg('Error'); }
    setEmail('');
    setTimeout(() => setMsg(''), 3000);
  };

  return (
    <footer className="bg-gray-900 text-gray-300 py-12">
      <div className="container">
        <div className="grid md:grid-cols-4 gap-8 mb-8">
          <div>
            <h2 className="text-2xl font-bold text-white mb-4">RNV Sports</h2>
            <p className="text-gray-400">Premium sports and gym equipment supplier since 2015. Managed by Hiralal Surgicals, Delhi.</p>
          </div>
          <div>
            <h3 className="text-lg font-semibold text-white mb-4">Quick Links</h3>
            <ul className="space-y-2">
              <li><Link to="/shop" className="hover:text-[#ee7203]">Shop</Link></li>
              <li><Link to="/about" className="hover:text-[#ee7203]">About Us</Link></li>
              <li><Link to="/contact" className="hover:text-[#ee7203]">Contact Us</Link></li>
            </ul>
          </div>
          <div>
            <h3 className="text-lg font-semibold text-white mb-4">Info</h3>
            <ul className="space-y-2">
              <li><Link to="/privacy" className="hover:text-[#ee7203]">Privacy Policy</Link></li>
              <li><Link to="/terms" className="hover:text-[#ee7203]">Terms & Conditions</Link></li>
              <li><Link to="/return-exchange" className="hover:text-[#ee7203]">Returns</Link></li>
            </ul>
          </div>
          <div>
            <h3 className="text-lg font-semibold text-white mb-4">Contact</h3>
            <p className="text-gray-400 text-sm">C 3/14, Basement Floor, Near Aditya Medical Centre, Rana Pratap Bagh, Delhi-110007</p>
            <p className="text-sm mt-2">Phone: +91-9911820202</p>
            <p className="text-sm">Email: hiralalsurgicals@gmail.com</p>
          </div>
        </div>
        <div className="border-t border-gray-800 pt-8">
          <form onSubmit={handleSubscribe} className="flex gap-2 max-w-md mb-4">
            <input type="email" value={email} onChange={(e) => setEmail(e.target.value)} placeholder="Subscribe to newsletter" className="flex-1 px-4 py-2 bg-gray-800 border border-gray-700 rounded-lg text-white" />
            <button type="submit" className="px-4 py-2 bg-[#ee7203] text-white rounded-lg font-semibold">Subscribe</button>
          </form>
          {msg && <p className="text-sm text-gray-400">{msg}</p>}
          <p className="text-gray-500 text-sm">© {new Date().getFullYear()} RNV Sports. All rights reserved.</p>
        </div>
      </div>
    </footer>
  );
};

import { Outlet } from 'react-router-dom';

const Layout = () => (
  <div className="min-h-screen flex flex-col bg-white">
    <Navbar />
    <main className="flex-1"><Outlet /></main>
    <Footer />
  </div>
);

export default Layout;
