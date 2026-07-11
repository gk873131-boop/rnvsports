import React, { useState } from 'react';
import { Link, useNavigate, useSearchParams } from 'react-router-dom';
import { FiEye, FiEyeOff } from 'react-icons/fi';
import SEO from '../components/common/SEO';
import { useAuth } from '../context/Context';
import { validateEmail } from '../utils';

export default function Login() {
  const { login, isAuthenticated } = useAuth();
  const navigate = useNavigate();
  const [searchParams] = useSearchParams();
  const redirect = searchParams.get('redirect') || '/';

  const [email,    setEmail]    = useState('');
  const [password, setPassword] = useState('');
  const [showPwd,  setShowPwd]  = useState(false);
  const [errors,   setErrors]   = useState({});
  const [loading,  setLoading]  = useState(false);
  const [apiError, setApiError] = useState('');

  if (isAuthenticated) { navigate(redirect, { replace: true }); return null; }

  const validate = () => {
    const errs = {};
    if (!email || !validateEmail(email)) errs.email = 'Valid email required';
    if (!password || password.length < 6) errs.password = 'Password must be at least 6 characters';
    setErrors(errs);
    return !Object.keys(errs).length;
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!validate()) return;
    setLoading(true);
    setApiError('');
    try {
      await login({ email, password });
      navigate(redirect, { replace: true });
    } catch (err) {
      setApiError(err.message || 'Invalid email or password');
    } finally {
      setLoading(false);
    }
  };

  return (
    <>
      <SEO title="Login" />
      <div style={{ minHeight: '70vh', display: 'flex', alignItems: 'center', background: 'var(--color-neutral-50)', padding: '2rem 1rem' }}>
        <div style={{ width: '100%', maxWidth: 440, margin: '0 auto' }}>
          <div className="card" style={{ padding: '2.5rem' }}>
            <div style={{ textAlign: 'center', marginBottom: '2rem' }}>
              <h1 style={{ fontSize: 'var(--font-size-2xl)', fontWeight: 800, marginBottom: '.375rem' }}>Welcome Back</h1>
              <p style={{ color: 'var(--color-neutral-500)', fontSize: 'var(--font-size-sm)' }}>Sign in to your RNV Sports account</p>
            </div>

            {apiError && <div className="alert alert-error" style={{ marginBottom: '1.25rem' }}>{apiError}</div>}

            <form onSubmit={handleSubmit} noValidate>
              <div className="form-group" style={{ marginBottom: '1rem' }}>
                <label className="form-label">Email Address <span>*</span></label>
                <input className={`form-input${errors.email ? ' error' : ''}`} type="email" value={email} onChange={e => { setEmail(e.target.value); setErrors(v => ({ ...v, email: '' })); }} placeholder="you@example.com" autoComplete="email" />
                {errors.email && <p className="form-error">{errors.email}</p>}
              </div>

              <div className="form-group" style={{ marginBottom: '1.5rem' }}>
                <label className="form-label">Password <span>*</span></label>
                <div style={{ position: 'relative' }}>
                  <input
                    className={`form-input${errors.password ? ' error' : ''}`}
                    type={showPwd ? 'text' : 'password'}
                    value={password}
                    onChange={e => { setPassword(e.target.value); setErrors(v => ({ ...v, password: '' })); }}
                    placeholder="Min. 6 characters"
                    autoComplete="current-password"
                    style={{ paddingRight: '2.75rem' }}
                  />
                  <button type="button" onClick={() => setShowPwd(p => !p)}
                    style={{ position: 'absolute', right: '.75rem', top: '50%', transform: 'translateY(-50%)', color: 'var(--color-neutral-400)' }}>
                    {showPwd ? <FiEyeOff size={16} /> : <FiEye size={16} />}
                  </button>
                </div>
                {errors.password && <p className="form-error">{errors.password}</p>}
              </div>

              <button type="submit" className="btn btn-primary btn-full btn-lg" disabled={loading}>
                {loading ? 'Signing in…' : 'Sign In'}
              </button>
            </form>

            <p style={{ textAlign: 'center', marginTop: '1.5rem', fontSize: 'var(--font-size-sm)', color: 'var(--color-neutral-500)' }}>
              Don't have an account?{' '}
              <Link to={`/register${redirect !== '/' ? `?redirect=${redirect}` : ''}`} style={{ color: 'var(--color-primary)', fontWeight: 600 }}>
                Sign Up
              </Link>
            </p>
          </div>
        </div>
      </div>
    </>
  );
}
