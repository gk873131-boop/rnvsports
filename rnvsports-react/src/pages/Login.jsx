import { useState, useEffect } from 'react';
import { Link, useNavigate, useSearchParams } from 'react-router-dom';
import { motion } from 'framer-motion';
import { FiMail, FiLock, FiEye, FiEyeOff } from 'react-icons/fi';
import { useAuth } from '../context/Context';

const Login = () => {
  const navigate = useNavigate();
  const [params] = useSearchParams();
  const { signIn, isAuthenticated } = useAuth();
  const [form, setForm] = useState({ email: '', password: '' });
  const [showPwd, setShowPwd] = useState(false);
  const [error, setError] = useState('');
  const [loading, setLoading] = useState(false);
  const redirect = params.get('redirect') || '/';

  useEffect(() => { if (isAuthenticated) navigate(redirect, { replace: true }); }, [isAuthenticated, navigate, redirect]);

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);
    setError('');
    try {
      await signIn(form);
      navigate(redirect, { replace: true });
    } catch (err) {
      setError(err.message?.includes('Invalid') ? 'Invalid email or password' : 'Login failed');
    }
    setLoading(false);
  };

  return (
    <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }}>
      <div className="bg-gray-100 py-4"><div className="container text-gray-600">Login</div></div>
      <div className="container py-12">
        <div className="max-w-md mx-auto bg-white rounded-lg shadow-sm p-8">
          <h1 className="text-2xl font-bold text-center mb-6">Sign In</h1>
          {error && <div className="bg-red-50 border border-red-200 text-red-700 p-3 rounded-lg mb-4">{error}</div>}
          <form onSubmit={handleSubmit} className="space-y-4">
            <div>
              <label className="block text-sm font-medium mb-1">Email</label>
              <div className="relative"><FiMail className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400" /><input type="email" value={form.email} onChange={(e) => setForm({ ...form, email: e.target.value })} required className="w-full pl-10 pr-4 py-3 border rounded-lg" placeholder="your@email.com" /></div>
            </div>
            <div>
              <label className="block text-sm font-medium mb-1">Password</label>
              <div className="relative"><FiLock className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400" /><input type={showPwd ? 'text' : 'password'} value={form.password} onChange={(e) => setForm({ ...form, password: e.target.value })} required className="w-full pl-10 pr-12 py-3 border rounded-lg" /><button type="button" onClick={() => setShowPwd(!showPwd)} className="absolute right-3 top-1/2 -translate-y-1/2 text-gray-400">{showPwd ? <FiEyeOff /> : <FiEye />}</button></div>
            </div>
            <button type="submit" disabled={loading} className="w-full py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600 disabled:opacity-50">{loading ? 'Signing in...' : 'Sign In'}</button>
          </form>
          <p className="text-center mt-6 text-gray-500">Don't have an account? <Link to={`/register${redirect !== '/' ? `?redirect=${redirect}` : ''}`} className="text-[#ee7203] font-medium">Register</Link></p>
        </div>
      </div>
    </motion.div>
  );
};

export default Login;
