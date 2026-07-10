import { useState, useEffect } from 'react'
import { Link, useNavigate } from 'react-router-dom'
import { FiSearch, FiShoppingCart, FiHeart, FiUser, FiMenu, FiX, FiPhone, FiChevronDown } from 'react-icons/fi'
import { useAuth, useCart, useWishlist } from '../../context/Context'
import { categoryService } from '../../services/services'

const Navbar = () => {
  const [mobileOpen, setMobileOpen] = useState(false)
  const [searchOpen, setSearchOpen] = useState(false)
  const [search, setSearch] = useState('')
  const [categories, setCategories] = useState([])
  const { isAuthenticated, user, logout } = useAuth()
  const { itemsCount } = useCart()
  const { itemsCount: wishCount } = useWishlist()
  const navigate = useNavigate()

  useEffect(() => {
    categoryService.getAll().then(res => setCategories(res.data || [])).catch(() => {})
  }, [])

  const handleSearch = (e) => {
    e.preventDefault()
    if (search.trim()) {
      navigate(`/search?q=${encodeURIComponent(search)}`)
      setSearch('')
      setSearchOpen(false)
    }
  }

  return (
    <header className="sticky top-0 z-50 bg-white shadow-sm">
      {/* Top bar */}
      <div className="bg-[#ee7203] text-white py-2">
        <div className="container text-sm flex items-center justify-between">
          <div className="flex items-center gap-4">
            <a href="tel:+919911820202" className="flex items-center gap-1 hover:opacity-80">
              <FiPhone /> +91-9911820202
            </a>
            <span className="hidden md:inline">| Mon-Sat, 11am-7pm</span>
          </div>
          <span className="hidden sm:block font-semibold">FREE SHIPPING ALL OVER INDIA</span>
        </div>
      </div>

      {/* Main header */}
      <div className="container flex items-center justify-between py-4 gap-4">
        <Link to="/" className="text-2xl font-bold text-[#ee7203] whitespace-nowrap">RNV Sports</Link>

        <form onSubmit={handleSearch} className="hidden md:flex flex-1 max-w-md mx-4">
          <input
            type="text"
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            placeholder="Search products..."
            className="w-full px-4 py-2 border rounded-l-lg focus:outline-none focus:border-[#ee7203]"
          />
          <button type="submit" className="px-4 py-2 bg-[#ee7203] text-white rounded-r-lg hover:bg-orange-600 transition-colors">
            <FiSearch />
          </button>
        </form>

        <div className="flex items-center gap-3">
          <button className="md:hidden p-2" onClick={() => setSearchOpen(!searchOpen)}>
            <FiSearch />
          </button>
          <Link to="/wishlist" className="relative p-2 hover:text-[#ee7203] transition-colors">
            <FiHeart className="text-xl" />
            {wishCount > 0 && (
              <span className="absolute -top-1 -right-1 w-5 h-5 bg-[#ee7203] text-white text-xs rounded-full flex items-center justify-center">{wishCount}</span>
            )}
          </Link>
          <Link to="/cart" className="relative p-2 hover:text-[#ee7203] transition-colors">
            <FiShoppingCart className="text-xl" />
            {itemsCount > 0 && (
              <span className="absolute -top-1 -right-1 w-5 h-5 bg-[#ee7203] text-white text-xs rounded-full flex items-center justify-center">{itemsCount}</span>
            )}
          </Link>
          {isAuthenticated ? (
            <div className="relative group">
              <button className="p-2 hover:text-[#ee7203] transition-colors flex items-center gap-1">
                <FiUser className="text-xl" />
                <FiChevronDown className="text-xs" />
              </button>
              <div className="absolute right-0 top-full hidden group-hover:block bg-white border rounded-lg shadow-lg min-w-[150px] z-10">
                <Link to="/dashboard" className="block px-4 py-2 hover:bg-gray-50 transition-colors">Dashboard</Link>
                <button onClick={logout} className="w-full text-left px-4 py-2 hover:bg-gray-50 transition-colors">Sign Out</button>
              </div>
            </div>
          ) : (
            <Link to="/login" className="hidden sm:block px-4 py-2 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600 transition-colors">Login</Link>
          )}
          <button className="lg:hidden p-2" onClick={() => setMobileOpen(!mobileOpen)}>
            {mobileOpen ? <FiX className="text-xl" /> : <FiMenu className="text-xl" />}
          </button>
        </div>
      </div>

      {/* Mobile search */}
      {searchOpen && (
        <div className="md:hidden border-t">
          <form onSubmit={handleSearch} className="container py-2 flex">
            <input type="text" value={search} onChange={(e) => setSearch(e.target.value)} placeholder="Search..." className="flex-1 px-4 py-2 border rounded-l-lg" />
            <button type="submit" className="px-4 py-2 bg-[#ee7203] text-white rounded-r-lg"><FiSearch /></button>
          </form>
        </div>
      )}

      {/* Desktop nav */}
      <nav className="hidden lg:block border-t">
        <div className="container">
          <ul className="flex gap-6">
            <li><Link to="/" className="block py-3 font-medium hover:text-[#ee7203] transition-colors">Home</Link></li>
            <li><Link to="/shop" className="block py-3 font-medium hover:text-[#ee7203] transition-colors">Products</Link></li>
            {categories.slice(0, 5).map(cat => (
              <li key={cat.category_id}>
                <Link to={`/category/${cat.category_slug}`} className="block py-3 font-medium hover:text-[#ee7203] transition-colors">{cat.category_name}</Link>
              </li>
            ))}
            <li><Link to="/about" className="block py-3 font-medium hover:text-[#ee7203] transition-colors">About Us</Link></li>
            <li><Link to="/contact" className="block py-3 font-medium hover:text-[#ee7203] transition-colors">Contact Us</Link></li>
            {isAuthenticated && <li><Link to="/dashboard" className="block py-3 font-medium hover:text-[#ee7203] transition-colors">Dashboard</Link></li>}
          </ul>
        </div>
      </nav>

      {/* Mobile menu */}
      {mobileOpen && (
        <div className="lg:hidden border-t bg-white">
          <nav className="container py-4">
            <ul className="space-y-2">
              <li><Link to="/" onClick={() => setMobileOpen(false)} className="block py-3 font-medium border-b">Home</Link></li>
              <li><Link to="/shop" onClick={() => setMobileOpen(false)} className="block py-3 font-medium border-b">Products</Link></li>
              {categories.slice(0, 5).map(cat => (
                <li key={cat.category_id}>
                  <Link to={`/category/${cat.category_slug}`} onClick={() => setMobileOpen(false)} className="block py-3 font-medium border-b">{cat.category_name}</Link>
                </li>
              ))}
              <li><Link to="/about" onClick={() => setMobileOpen(false)} className="block py-3 font-medium border-b">About Us</Link></li>
              <li><Link to="/contact" onClick={() => setMobileOpen(false)} className="block py-3 font-medium border-b">Contact Us</Link></li>
              {!isAuthenticated && <li><Link to="/login" onClick={() => setMobileOpen(false)} className="block py-3 text-[#ee7203] font-semibold">Login / Register</Link></li>}
            </ul>
          </nav>
        </div>
      )}
    </header>
  )
}

export default Navbar
