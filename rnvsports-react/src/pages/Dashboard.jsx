import { useState, useEffect } from 'react';
import { Link, Navigate } from 'react-router-dom';
import { motion } from 'framer-motion';
import { FiUser, FiPackage, FiHeart, FiSettings, FiLogOut } from 'react-icons/fi';
import { useAuth } from '../context/Context';
import { orderService } from '../services/api';
import supabase from '../services/supabase';

const Dashboard = () => {
  const { user, profile, signOut, updateProfile, isAuthenticated, loading } = useAuth();
  const [orders, setOrders] = useState([]);
  const [tab, setTab] = useState('profile');
  const [form, setForm] = useState({ firstName: '', lastName: '', phone: '', address1: '', city: '', state: '', pincode: '' });
  const [saving, setSaving] = useState(false);
  const [msg, setMsg] = useState('');

  useEffect(() => {
    if (profile) setForm({ firstName: profile.first_name || '', lastName: profile.last_name || '', phone: profile.mobile || '', address1: profile.address1 || '', city: profile.city || '', state: profile.state || '', pincode: profile.pincode || '' });
  }, [profile]);

  useEffect(() => {
    if (user?.id) orderService.getByUser(user.id).then(setOrders).catch(() => {});
  }, [user?.id]);

  if (loading) return <div className="container py-16 text-center"><div className="animate-spin w-12 h-12 border-4 border-[#ee7203] border-t-transparent rounded-full mx-auto" /></div>;
  if (!isAuthenticated) return <Navigate to="/login?redirect=/dashboard" replace />;

  const handleSave = async (e) => {
    e.preventDefault();
    setSaving(true);
    try {
      await updateProfile({ first_name: form.firstName, last_name: form.lastName, mobile: form.phone, address1: form.address1, city: form.city, state: form.state, pincode: form.pincode });
      setMsg('Saved!');
      setTimeout(() => setMsg(''), 3000);
    } catch (e) {}
    setSaving(false);
  };

  const tabs = [
    { id: 'profile', icon: FiUser, label: 'Profile' },
    { id: 'orders', icon: FiPackage, label: 'Orders' },
    { id: 'settings', icon: FiSettings, label: 'Settings' }
  ];

  return (
    <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }}>
      <div className="bg-gray-100 py-4"><div className="container text-gray-600">Dashboard</div></div>
      <div className="container py-8">
        <div className="grid lg:grid-cols-4 gap-8">
          <aside className="bg-white rounded-lg shadow-sm p-6">
            <div className="text-center mb-6">
              <div className="w-20 h-20 bg-gray-100 rounded-full flex items-center justify-center mx-auto mb-3 text-2xl font-bold text-[#ee7203]">{(profile?.first_name?.[0] || 'U').toUpperCase()}</div>
              <h3 className="font-semibold">{profile?.first_name} {profile?.last_name}</h3>
              <p className="text-sm text-gray-500">{user?.email}</p>
            </div>
            <nav className="space-y-1">
              {tabs.map((t) => (
                <button key={t.id} onClick={() => setTab(t.id)} className={`w-full flex items-center gap-3 px-4 py-3 rounded-lg ${tab === t.id ? 'bg-[#ee7203] text-white' : 'text-gray-600 hover:bg-gray-100'}`}>
                  <t.icon className="w-5 h-5" /><span>{t.label}</span>
                </button>
              ))}
              <button onClick={signOut} className="w-full flex items-center gap-3 px-4 py-3 rounded-lg text-gray-600 hover:bg-gray-100"><FiLogOut className="w-5 h-5" /><span>Sign Out</span></button>
            </nav>
          </aside>
          <main className="lg:col-span-3">
            {tab === 'profile' && (
              <div className="bg-white rounded-lg shadow-sm p-6">
                <h2 className="text-xl font-semibold mb-6">My Profile</h2>
                {msg && <div className="bg-green-50 text-green-700 p-3 rounded-lg mb-4">{msg}</div>}
                <form onSubmit={handleSave} className="space-y-4">
                  <div className="grid sm:grid-cols-2 gap-4">
                    {[
                      { name: 'firstName', label: 'First Name' }, { name: 'lastName', label: 'Last Name' },
                      { name: 'phone', label: 'Phone' }, { name: 'city', label: 'City' },
                      { name: 'state', label: 'State' }, { name: 'pincode', label: 'Pincode' },
                      { name: 'address1', label: 'Address', full: true }
                    ].map(({ name, label, full }) => (
                      <div key={name} className={full ? 'sm:col-span-2' : ''}>
                        <label className="block text-sm font-medium mb-1">{label}</label>
                        <input type="text" name={name} value={form[name]} onChange={(e) => setForm({ ...form, [name]: e.target.value })} className="w-full px-4 py-2 border rounded-lg" />
                      </div>
                    ))}
                  </div>
                  <button type="submit" disabled={saving} className="px-6 py-2 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600 disabled:opacity-50">{saving ? 'Saving...' : 'Save Changes'}</button>
                </form>
              </div>
            )}
            {tab === 'orders' && (
              <div className="bg-white rounded-lg shadow-sm p-6">
                <h2 className="text-xl font-semibold mb-6">My Orders</h2>
                {orders.length === 0 ? (
                  <div className="text-center py-8 text-gray-500">No orders yet. <Link to="/shop" className="text-[#ee7203]">Start shopping</Link></div>
                ) : (
                  <div className="space-y-4">
                    {orders.map((o) => (
                      <div key={o.id} className="border rounded-lg p-4">
                        <div className="flex justify-between mb-2">
                          <span className="font-semibold">Order #{o.order_no}</span>
                          <span className={`px-2 py-1 rounded text-xs ${o.order_status === 'delivered' ? 'bg-green-100 text-green-700' : 'bg-blue-100 text-blue-700'}`}>{o.order_status}</span>
                        </div>
                        <p className="text-gray-600">{new Date(o.created_at).toLocaleDateString()}</p>
                        <p className="font-semibold text-[#ee7203]">₹{o.total_amount?.toLocaleString()}</p>
                      </div>
                    ))}
                  </div>
                )}
              </div>
            )}
            {tab === 'settings' && (
              <div className="bg-white rounded-lg shadow-sm p-6">
                <h2 className="text-xl font-semibold mb-6">Account Settings</h2>
                <p className="text-gray-600">Change password functionality available soon.</p>
              </div>
            )}
          </main>
        </div>
      </div>
    </motion.div>
  );
};

export default Dashboard;
