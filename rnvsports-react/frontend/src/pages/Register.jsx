import React, { useState } from 'react';
import { Link, useNavigate, useSearchParams } from 'react-router-dom';
import { FiEye, FiEyeOff } from 'react-icons/fi';
import SEO from '../components/common/SEO';
import { useAuth } from '../context/Context';
import { validateEmail, validatePhone } from '../utils';

function F({ name, label, required, type = 'text', placeholder, value, onChange, error }) {
  return (
    <div className="form-group">
      <label className="form-label">{label}{required && <span>*</span>}</label>
      <input className={`form-input${error ? ' error' : ''}`} type={type} value={value} onChange={onChange} placeholder={placeholder} />
      {error && <p className="form-error">{error}</p>}
    </div>
  );
}

export default function Register() {
  const { register } = useAuth();
  const navigate = useNavigate();
  const [searchParams] = useSearchParams();
  const redirect = searchParams.get('redirect') || '/';

  const [form, setForm] = useState({ firstName: '', lastName: '', email: '', mobile: '', password: '', confirmPassword: '' });
  const [showPwd, setShowPwd] = useState(false);
  const [errors,  setErrors]  = useState({});
  const [loading, setLoading] = useState(false);
  const [apiError,setApiError]= useState('');
  const [success, setSuccess] = useState(false);

  const set = (f) => (e) => { setForm(p => ({ ...p, [f]: e.target.value })); setErrors(p => ({ ...p, [f]: '' })); };

  const validate = () => {
    const errs = {};
    if (!form.firstName.trim()) errs.firstName = 'Required';
    if (!form.lastName.trim())  errs.lastName  = 'Required';
    if (!form.email || !validateEmail(form.email)) errs.email = 'Valid email required';
    if (form.mobile && !validatePhone(form.mobile)) errs.mobile = 'Valid 10-digit mobile required';
    if (!form.password || form.password.length < 6) errs.password = 'Min. 6 characters';
    if (form.password !== form.confirmPassword) errs.confirmPassword = 'Passwords do not match';
    setErrors(errs);
    return !Object.keys(errs).length;
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!validate()) return;
    setLoading(true);
    setApiError('');
    try {
      await register({ firstName: form.firstName, lastName: form.lastName, email: form.email, mobile: form.mobile, password: form.password });
      navigate(redirect, { replace: true });
    } catch (err) {
      setApiError(err.message || 'Registration failed. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  return (
    <>
      <SEO title="Create Account" />
      <div style={{ minHeight: '70vh', display: 'flex', alignItems: 'center', background: 'var(--color-neutral-50)', padding: '2rem 1rem' }}>
        <div style={{ width: '100%', maxWidth: 500, margin: '0 auto' }}>
          <div className="card" style={{ padding: '2.5rem' }}>
            <div style={{ textAlign: 'center', marginBottom: '2rem' }}>
              <h1 style={{ fontSize: 'var(--font-size-2xl)', fontWeight: 800, marginBottom: '.375rem' }}>Create Account</h1>
              <p style={{ color: 'var(--color-neutral-500)', fontSize: 'var(--font-size-sm)' }}>Join RNV Sports for exclusive deals</p>
            </div>

            {apiError && <div className="alert alert-error" style={{ marginBottom: '1.25rem' }}>{apiError}</div>}

            <form onSubmit={handleSubmit} noValidate>
              <div className="grid-2" style={{ marginBottom: '1rem' }}>
                <F name="firstName" label="First Name" required value={form.firstName} onChange={set('firstName')} error={errors.firstName} />
                <F name="lastName"  label="Last Name"  required value={form.lastName} onChange={set('lastName')} error={errors.lastName} />
              </div>
              <div className="form-group" style={{ marginBottom: '1rem' }}>
                <F name="email"  label="Email Address" required type="email" placeholder="you@example.com" value={form.email} onChange={set('email')} error={errors.email} />
              </div>
              <div className="form-group" style={{ marginBottom: '1rem' }}>
                <F name="mobile" label="Mobile Number" type="tel" placeholder="10-digit mobile" value={form.mobile} onChange={set('mobile')} error={errors.mobile} />
              </div>
              <div className="form-group" style={{ marginBottom: '1rem' }}>
                <label className="form-label">Password <span>*</span></label>
                <div style={{ position: 'relative' }}>
                  <input
                    className={`form-input${errors.password ? ' error' : ''}`}
                    type={showPwd ? 'text' : 'password'}
                    value={form.password}
                    onChange={set('password')}
                    placeholder="Min. 6 characters"
                    style={{ paddingRight: '2.75rem' }}
                  />
                  <button type="button" onClick={() => setShowPwd(p => !p)}
                    style={{ position: 'absolute', right: '.75rem', top: '50%', transform: 'translateY(-50%)', color: 'var(--color-neutral-400)' }}>
                    {showPwd ? <FiEyeOff size={16} /> : <FiEye size={16} />}
                  </button>
                </div>
                {errors.password && <p className="form-error">{errors.password}</p>}
              </div>
              <div className="form-group" style={{ marginBottom: '1.5rem' }}>
                <label className="form-label">Confirm Password <span>*</span></label>
                <input
                  className={`form-input${errors.confirmPassword ? ' error' : ''}`}
                  type="password"
                  value={form.confirmPassword}
                  onChange={set('confirmPassword')}
                  placeholder="Repeat password"
                />
                {errors.confirmPassword && <p className="form-error">{errors.confirmPassword}</p>}
              </div>

              <button type="submit" className="btn btn-primary btn-full btn-lg" disabled={loading}>
                {loading ? 'Creating account…' : 'Create Account'}
              </button>
            </form>

            <p style={{ textAlign: 'center', marginTop: '1.5rem', fontSize: 'var(--font-size-sm)', color: 'var(--color-neutral-500)' }}>
              Already have an account?{' '}
              <Link to="/login" style={{ color: 'var(--color-primary)', fontWeight: 600 }}>Sign In</Link>
            </p>
          </div>
        </div>
      </div>
    </>
  );
}
