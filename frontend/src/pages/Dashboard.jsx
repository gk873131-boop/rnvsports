import React, { useState, useEffect, useRef } from 'react';
import { Link, useNavigate, useSearchParams } from 'react-router-dom';
import { FiUser, FiPackage, FiSettings, FiLogOut, FiSave } from 'react-icons/fi';
import SEO from '../components/common/SEO';
import LoadingSpinner from '../components/common/LoadingSpinner';
import { useAuth } from '../context/Context';
import { orderService, userService } from '../services/services';
import { formatPrice, formatDate, getOrderStatusClass } from '../utils';

const INDIA_STATES = [
  'Andhra Pradesh','Arunachal Pradesh','Assam','Bihar','Chhattisgarh','Goa','Gujarat','Haryana',
  'Himachal Pradesh','Jharkhand','Karnataka','Kerala','Madhya Pradesh','Maharashtra','Manipur',
  'Meghalaya','Mizoram','Nagaland','Odisha','Punjab','Rajasthan','Sikkim','Tamil Nadu','Telangana',
  'Tripura','Uttar Pradesh','Uttarakhand','West Bengal','Delhi','Jammu & Kashmir','Ladakh'
];

export default function Dashboard() {
  const { isAuthenticated, profile, logout, refreshProfile } = useAuth();
  const navigate = useNavigate();
  const [searchParams] = useSearchParams();
  const initialTab = searchParams.get('tab') || 'profile';

  const [tab,    setTab]    = useState(initialTab);
  const [orders, setOrders] = useState([]);
  const [ordersLoading, setOrdersLoading] = useState(false);

  const [profileForm, setProfileForm] = useState({ firstName: '', lastName: '', mobile: '', address1: '', city: '', state: '', pincode: '' });
  const [profileSaving, setProfileSaving] = useState(false);
  const [profileMsg,    setProfileMsg]    = useState('');

  const [pwdForm, setPwdForm] = useState({ oldPassword: '', newPassword: '', confirm: '' });
  const [pwdLoading, setPwdLoading] = useState(false);
  const [pwdMsg,     setPwdMsg]     = useState({ type: '', text: '' });
  const profileTimer = useRef(null);

  useEffect(() => {
    if (!isAuthenticated) navigate('/login?redirect=/dashboard');
  }, [isAuthenticated, navigate]);

  useEffect(() => {
    if (profile) {
      setProfileForm({
        firstName: profile.customer_fname || '',
        lastName:  profile.customer_lname || '',
        mobile:    profile.customer_mobile || '',
        address1:  profile.customer_address1 || '',
        city:      profile.customer_city || '',
        state:     profile.customer_state || '',
        pincode:   profile.customer_pincode || '',
      });
    }
  }, [profile]);

  useEffect(() => {
    if (tab === 'orders' && isAuthenticated) {
      setOrdersLoading(true);
      orderService.getMyOrders()
        .then(r => setOrders(r.data || []))
        .catch(() => setOrders([]))
        .finally(() => setOrdersLoading(false));
    }
  }, [tab, isAuthenticated]);

  useEffect(() => () => { if (profileTimer.current) clearTimeout(profileTimer.current); }, []);

  const setP = (f) => (e) => setProfileForm(p => ({ ...p, [f]: e.target.value }));

  const saveProfile = async (e) => {
    e.preventDefault();
    setProfileSaving(true);
    setProfileMsg('');
    try {
      await userService.updateProfile(profileForm);
      await refreshProfile();
      setProfileMsg('Profile updated successfully!');
    } catch (err) {
      setProfileMsg(err.message || 'Update failed');
    } finally {
      setProfileSaving(false);
      profileTimer.current = setTimeout(() => setProfileMsg(''), 4000);
    }
  };

  const changePassword = async (e) => {
    e.preventDefault();
    if (pwdForm.newPassword !== pwdForm.confirm) {
      setPwdMsg({ type: 'error', text: 'Passwords do not match' }); return;
    }
    if (pwdForm.newPassword.length < 6) {
      setPwdMsg({ type: 'error', text: 'Min. 6 characters' }); return;
    }
    setPwdLoading(true);
    setPwdMsg({ type: '', text: '' });
    try {
      await userService.changePassword({ oldPassword: pwdForm.oldPassword, newPassword: pwdForm.newPassword });
      setPwdMsg({ type: 'success', text: 'Password changed!' });
      setPwdForm({ oldPassword: '', newPassword: '', confirm: '' });
    } catch (err) {
      setPwdMsg({ type: 'error', text: err.message || 'Failed to change password' });
    } finally {
      setPwdLoading(false);
    }
  };

  if (!isAuthenticated) return null;

  const initials = profile ? `${profile.customer_fname?.[0] || ''}${profile.customer_lname?.[0] || ''}`.toUpperCase() : '?';

  const navItems = [
    { id: 'profile', icon: FiUser,    label: 'Profile' },
    { id: 'orders',  icon: FiPackage, label: 'My Orders' },
    { id: 'settings',icon: FiSettings,label: 'Settings' },
  ];

  return (
    <>
      <SEO title="My Dashboard" />
      <div className="page-header">
        <div className="container">
          <h1>My Account</h1>
          <div className="breadcrumb" style={{ justifyContent: 'center' }}>
            <Link to="/">Home</Link><span className="breadcrumb-sep">/</span><span>Dashboard</span>
          </div>
        </div>
      </div>

      <div className="section-sm">
        <div className="container">
          <div className="dashboard-layout">
            {/* Sidebar */}
            <aside className="dashboard-sidebar">
              <div className="card" style={{ padding: '1.5rem', textAlign: 'center' }}>
                <div className="dashboard-avatar">{initials}</div>
                <p style={{ fontWeight: 700, fontSize: 'var(--font-size-base)' }}>
                  {profile?.customer_fname} {profile?.customer_lname}
                </p>
                <p style={{ fontSize: 'var(--font-size-sm)', color: 'var(--color-neutral-400)', marginBottom: '1rem' }}>
                  {profile?.customer_email}
                </p>
                <hr className="divider" style={{ margin: '0 0 1rem' }} />
                <nav>
                  {navItems.map(({ id, icon: Icon, label }) => (
                    <button
                      key={id}
                      className={`dashboard-nav-item${tab === id ? ' active' : ''}`}
                      style={{ width: '100%' }}
                      onClick={() => setTab(id)}
                    >
                      <Icon size={16} /> {label}
                    </button>
                  ))}
                  <button
                    className="dashboard-nav-item"
                    style={{ width: '100%', color: 'var(--color-error)' }}
                    onClick={() => { logout(); navigate('/'); }}
                  >
                    <FiLogOut size={16} /> Sign Out
                  </button>
                </nav>
              </div>
            </aside>

            {/* Content */}
            <div className="dashboard-content">
              {/* Profile tab */}
              {tab === 'profile' && (
                <div className="card" style={{ padding: '1.75rem' }}>
                  <h2 style={{ fontWeight: 700, marginBottom: '1.5rem', fontSize: 'var(--font-size-xl)' }}>
                    <FiUser style={{ display: 'inline', marginRight: 8 }} />Profile Information
                  </h2>
                  {profileMsg && (
                    <div className={`alert ${profileMsg.includes('success') ? 'alert-success' : 'alert-error'}`} style={{ marginBottom: '1rem' }}>
                      {profileMsg}
                    </div>
                  )}
                  <form onSubmit={saveProfile}>
                    <div className="grid-2" style={{ marginBottom: '1rem' }}>
                      <div className="form-group">
                        <label className="form-label">First Name</label>
                        <input className="form-input" value={profileForm.firstName} onChange={setP('firstName')} />
                      </div>
                      <div className="form-group">
                        <label className="form-label">Last Name</label>
                        <input className="form-input" value={profileForm.lastName} onChange={setP('lastName')} />
                      </div>
                    </div>
                    <div className="form-group" style={{ marginBottom: '1rem' }}>
                      <label className="form-label">Mobile</label>
                      <input className="form-input" type="tel" value={profileForm.mobile} onChange={setP('mobile')} />
                    </div>
                    <div className="form-group" style={{ marginBottom: '1rem' }}>
                      <label className="form-label">Address</label>
                      <input className="form-input" value={profileForm.address1} onChange={setP('address1')} />
                    </div>
                    <div className="grid-2" style={{ marginBottom: '1rem' }}>
                      <div className="form-group">
                        <label className="form-label">City</label>
                        <input className="form-input" value={profileForm.city} onChange={setP('city')} />
                      </div>
                      <div className="form-group">
                        <label className="form-label">State</label>
                        <select className="form-select" value={profileForm.state} onChange={setP('state')}>
                          <option value="">Select</option>
                          {INDIA_STATES.map(s => <option key={s} value={s}>{s}</option>)}
                        </select>
                      </div>
                    </div>
                    <div className="form-group" style={{ marginBottom: '1.5rem' }}>
                      <label className="form-label">Pincode</label>
                      <input className="form-input" style={{ maxWidth: 180 }} value={profileForm.pincode} onChange={setP('pincode')} />
                    </div>
                    <button type="submit" className="btn btn-primary" disabled={profileSaving}>
                      <FiSave size={15} /> {profileSaving ? 'Saving…' : 'Save Changes'}
                    </button>
                  </form>
                </div>
              )}

              {/* Orders tab */}
              {tab === 'orders' && (
                <div className="card" style={{ padding: '1.75rem' }}>
                  <h2 style={{ fontWeight: 700, marginBottom: '1.5rem', fontSize: 'var(--font-size-xl)' }}>
                    <FiPackage style={{ display: 'inline', marginRight: 8 }} />My Orders
                  </h2>
                  {ordersLoading ? <LoadingSpinner centered /> : orders.length === 0 ? (
                    <div className="empty-state">
                      <FiPackage style={{ fontSize: '3rem', color: 'var(--color-neutral-300)' }} />
                      <p className="empty-title">No orders yet</p>
                      <Link to="/shop" className="btn btn-primary">Start Shopping</Link>
                    </div>
                  ) : (
                    <div style={{ overflowX: 'auto' }}>
                      <table style={{ width: '100%', borderCollapse: 'collapse' }}>
                        <thead>
                          <tr style={{ background: 'var(--color-neutral-50)' }}>
                            {['Order #', 'Date', 'Total', 'Status', 'Payment'].map(h => (
                              <th key={h} style={{ padding: '.75rem 1rem', textAlign: 'left', fontWeight: 700, fontSize: 'var(--font-size-xs)', textTransform: 'uppercase', letterSpacing: '.08em', color: 'var(--color-neutral-500)', borderBottom: '1px solid var(--color-neutral-100)' }}>{h}</th>
                            ))}
                          </tr>
                        </thead>
                        <tbody>
                          {orders.map(order => (
                            <tr key={order.order_no}>
                              <td style={{ padding: '.875rem 1rem', fontWeight: 600, fontSize: 'var(--font-size-sm)', borderBottom: '1px solid var(--color-neutral-100)' }}>
                                {order.order_no}
                              </td>
                              <td style={{ padding: '.875rem 1rem', fontSize: 'var(--font-size-sm)', color: 'var(--color-neutral-600)', borderBottom: '1px solid var(--color-neutral-100)' }}>
                                {formatDate(order.date)}
                              </td>
                              <td style={{ padding: '.875rem 1rem', fontWeight: 700, fontSize: 'var(--font-size-sm)', borderBottom: '1px solid var(--color-neutral-100)' }}>
                                {formatPrice(order.grand_total || order.total_amt)}
                              </td>
                              <td style={{ padding: '.875rem 1rem', borderBottom: '1px solid var(--color-neutral-100)' }}>
                                <span className={`status-badge ${getOrderStatusClass(order.order_status)}`}>
                                  {order.order_status}
                                </span>
                              </td>
                              <td style={{ padding: '.875rem 1rem', borderBottom: '1px solid var(--color-neutral-100)' }}>
                                <span className={`status-badge ${order.payment_status == 1 ? 'status-delivered' : 'status-pending'}`}>
                                  {order.payment_status == 1 ? 'Paid' : 'Pending'}
                                </span>
                              </td>
                            </tr>
                          ))}
                        </tbody>
                      </table>
                    </div>
                  )}
                </div>
              )}

              {/* Settings tab */}
              {tab === 'settings' && (
                <div className="card" style={{ padding: '1.75rem' }}>
                  <h2 style={{ fontWeight: 700, marginBottom: '1.5rem', fontSize: 'var(--font-size-xl)' }}>
                    <FiSettings style={{ display: 'inline', marginRight: 8 }} />Change Password
                  </h2>
                  {pwdMsg.text && (
                    <div className={`alert ${pwdMsg.type === 'success' ? 'alert-success' : 'alert-error'}`} style={{ marginBottom: '1rem' }}>
                      {pwdMsg.text}
                    </div>
                  )}
                  <form onSubmit={changePassword} style={{ maxWidth: 400 }}>
                    {[
                      { f: 'oldPassword', l: 'Current Password' },
                      { f: 'newPassword', l: 'New Password' },
                      { f: 'confirm',     l: 'Confirm New Password' },
                    ].map(({ f, l }) => (
                      <div key={f} className="form-group" style={{ marginBottom: '1rem' }}>
                        <label className="form-label">{l}</label>
                        <input className="form-input" type="password" value={pwdForm[f]} onChange={e => setPwdForm(p => ({ ...p, [f]: e.target.value }))} />
                      </div>
                    ))}
                    <button type="submit" className="btn btn-primary" disabled={pwdLoading}>
                      {pwdLoading ? 'Updating…' : 'Update Password'}
                    </button>
                  </form>
                </div>
              )}
            </div>
          </div>
        </div>
      </div>
    </>
  );
}
