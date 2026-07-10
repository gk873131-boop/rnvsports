import { useState, useEffect } from 'react'
import { Link, useNavigate, useSearchParams } from 'react-router-dom'
import { FiMail, FiLock, FiPhone, FiEye, FiEyeOff } from 'react-icons/fi'
import SEO from '../components/common/SEO'
import { useAuth } from '../context/Context'
import { validateEmail, validatePhone } from '../utils'

const Register = () => {
  const navigate = useNavigate()
  const [params] = useSearchParams()
  const { register, isAuthenticated } = useAuth()
  const [form, setForm] = useState({ firstName: '', lastName: '', email: '', phone: '', password: '', confirmPassword: '' })
  const [showPwd, setShowPwd] = useState(false)
  const [error, setError] = useState('')
  const [success, setSuccess] = useState(false)
  const [loading, setLoading] = useState(false)
  const redirect = params.get('redirect') || '/'

  useEffect(() => { if (isAuthenticated) navigate(redirect, { replace: true }) }, [isAuthenticated, navigate, redirect])

  const handleSubmit = async (e) => {
    e.preventDefault()
    setError('')
    if (form.password !== form.confirmPassword) { setError('Passwords do not match'); return }
    if (form.password.length < 6) { setError('Password must be at least 6 characters'); return }
    if (!validateEmail(form.email)) { setError('Invalid email address'); return }
    if (!validatePhone(form.phone)) { setError('Invalid phone number (10 digits starting with 6-9)'); return }
    setLoading(true)
    try {
      await register({ firstName: form.firstName, lastName: form.lastName, email: form.email, mobile: form.phone, password: form.password })
      setSuccess(true)
    } catch (err) {
      setError(err.message || 'Registration failed')
    }
    setLoading(false)
  }

  if (success) {
    return (
      <>
        <SEO title="Registration Successful" />
        <div className="container py-12">
          <div className="max-w-md mx-auto bg-white rounded-lg shadow-sm p-8 text-center">
            <div className="w-16 h-16 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-4 text-2xl text-green-500">✓</div>
            <h2 className="text-2xl font-bold mb-4">Account Created!</h2>
            <p className="text-gray-600 mb-6">Your account has been created successfully. You can now sign in.</p>
            <Link to={`/login${redirect !== '/' ? `?redirect=${redirect}` : ''}`} className="inline-block px-6 py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600 transition-colors">Sign In</Link>
          </div>
        </div>
      </>
    )
  }

  return (
    <>
      <SEO title="Register" />
      <div className="bg-gray-100 py-4"><div className="container text-gray-600">Register</div></div>

      <div className="container py-12">
        <div className="max-w-md mx-auto bg-white rounded-lg shadow-sm p-8">
          <h1 className="text-2xl font-bold text-center mb-6">Create Account</h1>
          {error && <div className="bg-red-50 border border-red-200 text-red-700 p-3 rounded-lg mb-4">{error}</div>}
          <form onSubmit={handleSubmit} className="space-y-4">
            <div className="grid grid-cols-2 gap-4">
              <div>
                <label className="block text-sm font-medium mb-1">First Name *</label>
                <input type="text" value={form.firstName} onChange={(e) => setForm({ ...form, firstName: e.target.value })} required className="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-[#ee7203]" />
              </div>
              <div>
                <label className="block text-sm font-medium mb-1">Last Name *</label>
                <input type="text" value={form.lastName} onChange={(e) => setForm({ ...form, lastName: e.target.value })} required className="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-[#ee7203]" />
              </div>
            </div>
            <div>
              <label className="block text-sm font-medium mb-1">Email *</label>
              <div className="relative">
                <FiMail className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400" />
                <input type="email" value={form.email} onChange={(e) => setForm({ ...form, email: e.target.value })} required className="w-full pl-10 pr-4 py-2 border rounded-lg focus:outline-none focus:border-[#ee7203]" />
              </div>
            </div>
            <div>
              <label className="block text-sm font-medium mb-1">Phone *</label>
              <div className="relative">
                <FiPhone className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400" />
                <input type="tel" value={form.phone} onChange={(e) => setForm({ ...form, phone: e.target.value })} required maxLength={10} className="w-full pl-10 pr-4 py-2 border rounded-lg focus:outline-none focus:border-[#ee7203]" />
              </div>
            </div>
            <div>
              <label className="block text-sm font-medium mb-1">Password *</label>
              <div className="relative">
                <FiLock className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400" />
                <input type={showPwd ? 'text' : 'password'} value={form.password} onChange={(e) => setForm({ ...form, password: e.target.value })} required minLength={6} className="w-full pl-10 pr-12 py-2 border rounded-lg focus:outline-none focus:border-[#ee7203]" />
                <button type="button" onClick={() => setShowPwd(!showPwd)} className="absolute right-3 top-1/2 -translate-y-1/2 text-gray-400">{showPwd ? <FiEyeOff /> : <FiEye />}</button>
              </div>
            </div>
            <div>
              <label className="block text-sm font-medium mb-1">Confirm Password *</label>
              <input type={showPwd ? 'text' : 'password'} value={form.confirmPassword} onChange={(e) => setForm({ ...form, confirmPassword: e.target.value })} required className="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-[#ee7203]" />
            </div>
            <label className="flex items-start gap-2 text-sm">
              <input type="checkbox" required className="mt-1" />
              <span>I agree to the <Link to="/terms" className="text-[#ee7203]">Terms</Link> and <Link to="/privacy" className="text-[#ee7203]">Privacy Policy</Link></span>
            </label>
            <button type="submit" disabled={loading} className="w-full py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600 transition-colors disabled:opacity-50">{loading ? 'Creating...' : 'Create Account'}</button>
          </form>
          <p className="text-center mt-6 text-gray-500">Already have an account? <Link to={`/login${redirect !== '/' ? `?redirect=${redirect}` : ''}`} className="text-[#ee7203] font-medium">Sign In</Link></p>
        </div>
      </div>
    </>
  )
}

export default Register
