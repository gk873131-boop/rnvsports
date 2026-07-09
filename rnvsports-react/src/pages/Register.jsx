import { useState, useEffect } from 'react';
import { Link, useNavigate, useSearchParams } from 'react-router-dom';
import { motion } from 'framer-motion';
import { FiUser, FiMail, FiLock, FiPhone, FiEye, FiEyeOff } from 'react-icons/fi';
import { useAuth } from '../context/Context';

const Register = () => {
  const navigate = useNavigate();
  const [params] = useSearchParams();
  const { signUp, isAuthenticated } = useAuth();
  const [form, setForm] = useState({ firstName: '', lastName: '', email: '', phone: '', password: '', confirmPassword: '' });
  const [showPwd, setShowPwd] = useState(false);
  const [error, setError] = useState('');
  const [success, setSuccess] = useState(false);
  const [loading, setLoading] = useState(false);
  const redirect = params.get('redirect') || '/';

  useEffect(() => { if (isAuthenticated) navigate(redirect, { replace: true }); }, [isAuthenticated, navigate, redirect]);

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (form.password !== form.confirmPassword) { setError('Passwords do not match'); return; }
    if (form.password.length < 8) { setError('Password must be at least 8 characters'); return; }
    setLoading(true);
    setError('');
    try {
      await signUp({ email: form.email, password: form.password, firstName: form.firstName, lastName: form.lastName, mobile: form.phone });
      setSuccess(true);
    } catch (err) {
      setError(err.message?.includes('already') ? 'Email already registered' : 'Registration failed');
    }
    setLoading(false);
  };

  if (success) {
    return (
      <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} className="container py-12">
        <div className="max-w-md mx-auto bg-white rounded-lg shadow-sm p-8 text-center">
          <div className="w-16 h-16 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-4"><span className="text-2xl text-green-500">✓</span></div>
          <h2 className="text-2xl font-bold mb-4">Account Created!</h2>
          <p className="text-gray-600 mb-6">You can now sign in.</p>
          <Link to={`/login${redirect !== '/' ? `?redirect=${redirect}` : ''}`} className="inline-block px-6 py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600">Sign In</Link>
        </div>
      </motion.div>
    );
  }

  return (
    <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }}>
      <div className="bg-gray-100 py-4"><div className="container text-gray-600">Register</div></div>
      <div className="container py-12">
        <div className="max-w-md mx-auto bg-white rounded-lg shadow-sm p-8">
          <h1 className="text-2xl font-bold text-center mb-6">Create Account</h1>
          {error && <div className="bg-red-50 border border-red-200 text-red-700 p-3 rounded-lg mb-4">{error}</div>}
          <form onSubmit={handleSubmit} className="space-y-4">
            <div className="grid grid-cols-2 gap-4">
              <div><label className="block text-sm font-medium mb-1">First Name *</label><input type="text" value={form.firstName} onChange={(e) => setForm({ ...form, firstName: e.target.value })} required className="w-full px-4 py-2 border rounded-lg" /></div>
              <div><label className="block text-sm font-medium mb-1">Last Name *</label><input type="text" value={form.lastName} onChange={(e) => setForm({ ...form, lastName: e.target.value })} required className="w-full px-4 py-2 border rounded-lg" /></div>
            </div>
            <div><label className="block text-sm font-medium mb-1">Email *</label><div className="relative"><FiMail className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400" /><input type="email" value={form.email} onChange={(e) => setForm({ ...form, email: e.target.value })} required className="w-full pl-10 pr-4 py-2 border rounded-lg" /></div></div>
            <div><label className="block text-sm font-medium mb-1">Phone *</label><div className="relative"><FiPhone className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400" /><input type="tel" value={form.phone} onChange={(e) => setForm({ ...form, phone: e.target.value })} required maxLength={10} className="w-full pl-10 pr-4 py-2 border rounded-lg" /></div></div>
            <div><label className="block text-sm font-medium mb-1">Password *</label><div className="relative"><FiLock className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400" /><input type={showPwd ? 'text' : 'password'} value={form.password} onChange={(e) => setForm({ ...form, password: e.target.value })} required minLength={8} className="w-full pl-10 pr-12 py-2 border rounded-lg" /><button type="button" onClick={() => setShowPwd(!showPwd)} className="absolute right-3 top-1/2 -translate-y-1/2 text-gray-400">{showPwd ? <FiEyeOff /> : <FiEye />}</button></div></div>
            <div><label className="block text-sm font-medium mb-1">Confirm Password *</label><input type={showPwd ? 'text' : 'password'} value={form.confirmPassword} onChange={(e) => setForm({ ...form, confirmPassword: e.target.value })} required className="w-full px-4 py-2 border rounded-lg" /></div>
            <label className="flex items-start gap-2 text-sm"><input type="checkbox" required className="mt-1" /><span>I agree to the <Link to="/terms" className="text-[#ee7203]">Terms</Link> and <Link to="/privacy" className="text-[#ee7203]">Privacy Policy</Link></span></label>
            <button type="submit" disabled={loading} className="w-full py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600 disabled:opacity-50">{loading ? 'Creating...' : 'Create Account'}</button>
          </form>
          <p className="text-center mt-6 text-gray-500">Already have an account? <Link to={`/login${redirect !== '/' ? `?redirect=${redirect}` : ''}`} className="text-[#ee7203] font-medium">Sign In</Link></p>
        </div>
      </div>
    </motion.div>
  );
};

export default Register;
