import { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { motion, AnimatePresence } from 'framer-motion';
import { FiTrash2, FiMinus, FiPlus, FiTag } from 'react-icons/fi';
import EmptyState from '../components/common/EmptyState';
import { useCart } from '../context/Context';
import { useAuth } from '../context/Context';
import supabase from '../services/supabase';

const Cart = () => {
  const navigate = useNavigate();
  const { isAuthenticated } = useAuth();
  const { items, loading, subtotal, discount, promoCode, total, updateQuantity, removeItem, removePromo, applyPromo } = useCart();
  const [promoInput, setPromoInput] = useState('');
  const [promoError, setPromoError] = useState('');

  const shipping = total >= 500 ? 0 : 50;
  const finalTotal = total + shipping;

  const handleApplyPromo = async (e) => {
    e.preventDefault();
    if (!promoInput.trim()) return;
    setPromoError('');
    try {
      const { data, error } = await supabase.from('promos').select('*').eq('code', promoInput.toUpperCase()).eq('status', true).maybeSingle();
      if (!data) { setPromoError('Invalid promo code'); return; }
      if (data.expiry_date && new Date(data.expiry_date) < new Date()) { setPromoError('This code has expired'); return; }
      const discountAmount = data.discount_type === 'percentage' ? Math.min((subtotal * data.discount) / 100, data.max_discount || Infinity) : data.discount;
      applyPromo(data, discountAmount);
    } catch (e) { setPromoError('Failed to validate'); }
  };

  if (loading) return <div className="container py-16 text-center"><div className="animate-spin w-12 h-12 border-4 border-[#ee7203] border-t-transparent rounded-full mx-auto" /></div>;

  return (
    <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }}>
      <div className="bg-gray-100 py-4"><div className="container text-gray-600">Home / Cart</div></div>
      <div className="container py-8">
        <h1 className="text-2xl font-bold mb-8">Shopping Cart ({items.length} items)</h1>
        {items.length === 0 ? (
          <EmptyState title="Your cart is empty" description="Start shopping to add items" action={() => navigate('/shop')} actionLabel="Shop Now" />
        ) : (
          <div className="grid lg:grid-cols-3 gap-8">
            <div className="lg:col-span-2">
              <AnimatePresence>
                {items.map((item) => (
                  <motion.div key={item.id} initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0, height: 0 }} className="bg-white rounded-lg shadow-sm p-4 mb-4 flex gap-4">
                    <Link to={`/product/${item.product?.slug}`}><img src={item.product?.featured_image} alt={item.product?.name} className="w-20 h-20 object-cover rounded" /></Link>
                    <div className="flex-1">
                      <Link to={`/product/${item.product?.slug}`} className="font-semibold text-gray-800 hover:text-[#ee7203]">{item.product?.name}</Link>
                      <div className="flex items-center gap-2 mt-2">
                        <button onClick={() => updateQuantity(item.id, item.quantity - 1)} disabled={item.quantity <= 1} className="p-1 border rounded disabled:opacity-50"><FiMinus /></button>
                        <input type="number" value={item.quantity} onChange={(e) => updateQuantity(item.id, parseInt(e.target.value) || 1)} className="w-12 text-center border rounded py-1" min={1} max={10} />
                        <button onClick={() => updateQuantity(item.id, item.quantity + 1)} disabled={item.quantity >= 10} className="p-1 border rounded disabled:opacity-50"><FiPlus /></button>
                      </div>
                    </div>
                    <div className="text-right">
                      <p className="font-bold text-[#ee7203]">₹{(item.price * item.quantity).toLocaleString()}</p>
                      <button onClick={() => removeItem(item.id)} className="text-gray-400 hover:text-red-500 mt-2"><FiTrash2 /></button>
                    </div>
                  </motion.div>
                ))}
              </AnimatePresence>
            </div>
            <div>
              <div className="bg-white rounded-lg shadow-sm p-6 sticky top-24">
                <h2 className="text-lg font-semibold mb-4">Order Summary</h2>
                <div className="space-y-2 text-gray-600">
                  <div className="flex justify-between"><span>Subtotal</span><span>₹{subtotal.toLocaleString()}</span></div>
                  {discount > 0 && <div className="flex justify-between text-green-600"><span>Discount</span><span>-₹{discount.toLocaleString()}</span></div>}
                  <div className="flex justify-between"><span>Shipping</span><span>{shipping === 0 ? 'Free' : `₹${shipping}`}</span></div>
                  <hr />
                  <div className="flex justify-between text-lg font-bold text-gray-800"><span>Total</span><span>₹{finalTotal.toLocaleString()}</span></div>
                </div>
                <div className="mt-4 pt-4 border-t">
                  <form onSubmit={handleApplyPromo} className="flex gap-2">
                    <div className="relative flex-1"><FiTag className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400" /><input type="text" value={promoInput} onChange={(e) => { setPromoInput(e.target.value.toUpperCase()); setPromoError(''); }} placeholder="Promo code" className="w-full pl-10 pr-4 py-2 border rounded-lg" /></div>
                    <button type="submit" className="px-4 py-2 bg-gray-800 text-white rounded-lg">Apply</button>
                  </form>
                  {promoError && <p className="text-red-500 text-sm mt-2">{promoError}</p>}
                  {promoCode && <div className="mt-2 p-2 bg-green-50 rounded flex justify-between"><span className="text-green-700">{promoCode.code}</span><button onClick={removePromo} className="text-gray-400 hover:text-red-500"><FiTrash2 /></button></div>}
                </div>
                <button onClick={() => navigate(isAuthenticated ? '/checkout' : '/login?redirect=/checkout')} className="w-full mt-6 py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600">Proceed to Checkout</button>
              </div>
            </div>
          </div>
        )}
      </div>
    </motion.div>
  );
};

export default Cart;
