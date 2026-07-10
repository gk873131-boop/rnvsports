import { useState } from 'react'
import { Link } from 'react-router-dom'
import { FiMapPin, FiPhone, FiMail, FiSend } from 'react-icons/fi'
import { newsletterService } from '../../services/services'

const Footer = () => {
  const [email, setEmail] = useState('')
  const [msg, setMsg] = useState('')

  const handleSubscribe = async (e) => {
    e.preventDefault()
    if (!email) return
    try {
      await newsletterService.subscribe(email)
      setMsg('Subscribed successfully!')
    } catch (err) {
      setMsg(err.message || 'Failed to subscribe')
    }
    setEmail('')
    setTimeout(() => setMsg(''), 4000)
  }

  return (
    <footer className="bg-gray-900 text-gray-300 py-12">
      <div className="container">
        <div className="grid md:grid-cols-4 gap-8 mb-8">
          <div>
            <h2 className="text-2xl font-bold text-white mb-4">RNV Sports</h2>
            <p className="text-gray-400 text-sm leading-relaxed">
              Premium sports and gym equipment supplier since 2015. Managed by Hiralal Surgicals, Delhi.
            </p>
          </div>

          <div>
            <h3 className="text-lg font-semibold text-white mb-4">Quick Links</h3>
            <ul className="space-y-2 text-sm">
              <li><Link to="/shop" className="hover:text-[#ee7203] transition-colors">Shop</Link></li>
              <li><Link to="/about" className="hover:text-[#ee7203] transition-colors">About Us</Link></li>
              <li><Link to="/contact" className="hover:text-[#ee7203] transition-colors">Contact Us</Link></li>
              <li><Link to="/blog" className="hover:text-[#ee7203] transition-colors">Blog</Link></li>
            </ul>
          </div>

          <div>
            <h3 className="text-lg font-semibold text-white mb-4">Information</h3>
            <ul className="space-y-2 text-sm">
              <li><Link to="/privacy" className="hover:text-[#ee7203] transition-colors">Privacy Policy</Link></li>
              <li><Link to="/terms" className="hover:text-[#ee7203] transition-colors">Terms & Conditions</Link></li>
              <li><Link to="/return-exchange" className="hover:text-[#ee7203] transition-colors">Returns & Exchange</Link></li>
            </ul>
          </div>

          <div>
            <h3 className="text-lg font-semibold text-white mb-4">Contact</h3>
            <div className="space-y-2 text-sm text-gray-400">
              <p className="flex items-start gap-2"><FiMapPin className="mt-1 flex-shrink-0 text-[#ee7203]" /> C 3/14, Basement Floor, Near Aditya Medical Centre, Rana Pratap Bagh, Delhi-110007</p>
              <p className="flex items-center gap-2"><FiPhone className="text-[#ee7203]" /> +91-9911820202</p>
              <p className="flex items-center gap-2"><FiMail className="text-[#ee7203]" /> hiralalsurgicals@gmail.com</p>
            </div>
          </div>
        </div>

        <div className="border-t border-gray-800 pt-8">
          <form onSubmit={handleSubscribe} className="flex gap-2 max-w-md mb-4">
            <input
              type="email"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              placeholder="Subscribe to newsletter"
              className="flex-1 px-4 py-2 bg-gray-800 border border-gray-700 rounded-lg text-white focus:border-[#ee7203] focus:outline-none"
            />
            <button type="submit" className="px-4 py-2 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600 transition-colors flex items-center gap-1">
              <FiSend /> Subscribe
            </button>
          </form>
          {msg && <p className="text-sm text-gray-400 mb-2">{msg}</p>}
          <p className="text-gray-500 text-sm">© {new Date().getFullYear()} RNV Sports. All rights reserved.</p>
        </div>
      </div>
    </footer>
  )
}

export default Footer
