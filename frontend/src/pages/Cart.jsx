import { useNavigate } from 'react-router-dom'
import SEO from '../components/common/SEO'
import EmptyState from '../components/common/EmptyState'
import LoadingSpinner from '../components/common/LoadingSpinner'
import { Link } from 'react-router-dom'
import { FiTrash2, FiMinus, FiPlus, FiTag } from 'react-icons/fi'
import { useCart, useAuth } from '../context/Context'
import { formatPrice, getImageUrl, getShippingCost } from '../utils'

const Cart = () => {
  const navigate = useNavigate()
  const { isAuthenticated } = useAuth()
  const { items, loading, subtotal, updateQuantity, removeItem } = useCart()

  const shipping = getShippingCost(subtotal)
  const total = subtotal + shipping

  if (loading) return <LoadingSpinner className="min-h-[60vh]" />

  return (
    <>
      <SEO title="Shopping Cart" />
      <div className="bg-gray-100 py-4"><div className="container text-gray-600">Home / Cart</div></div>

      <div className="container py-8">
        <h1 className="text-2xl font-bold mb-8">Shopping Cart ({items.length} items)</h1>

        {items.length === 0 ? (
          <EmptyState title="Your cart is empty" description="Start shopping to add items to your cart" action={() => navigate('/shop')} actionLabel="Shop Now" />
        ) : (
          <div className="grid lg:grid-cols-3 gap-8">
            <div className="lg:col-span-2">
              {items.map(item => (
                <div key={item.cart_id} className="bg-white rounded-lg shadow-sm p-4 mb-4 flex gap-4">
                  <Link to={`/product/${item.product_slug}`}>
                    <img src={getImageUrl(item.featured_image)} alt={item.product_name} className="w-20 h-20 object-cover rounded" />
                  </Link>
                  <div className="flex-1">
                    <Link to={`/product/${item.product_slug}`} className="font-semibold text-gray-800 hover:text-[#ee7203]">{item.product_name}</Link>
                    {item.size && <p className="text-sm text-gray-500">Size: {item.size}</p>}
                    <div className="flex items-center gap-2 mt-2">
                      <button onClick={() => updateQuantity(item.cart_id, item.product_qty - 1)} disabled={item.product_qty <= 1} className="p-1 border rounded disabled:opacity-50"><FiMinus /></button>
                      <input type="number" value={item.product_qty} onChange={(e) => updateQuantity(item.cart_id, parseInt(e.target.value) || 1)} className="w-12 text-center border rounded py-1" min={1} max={10} />
                      <button onClick={() => updateQuantity(item.cart_id, item.product_qty + 1)} disabled={item.product_qty >= 10} className="p-1 border rounded disabled:opacity-50"><FiPlus /></button>
                    </div>
                  </div>
                  <div className="text-right">
                    <p className="font-bold text-[#ee7203]">₹{formatPrice(item.cart_price * item.product_qty)}</p>
                    <button onClick={() => removeItem(item.cart_id)} className="text-gray-400 hover:text-red-500 mt-2"><FiTrash2 /></button>
                  </div>
                </div>
              ))}
            </div>

            <div>
              <div className="bg-white rounded-lg shadow-sm p-6 sticky top-24">
                <h2 className="text-lg font-semibold mb-4">Order Summary</h2>
                <div className="space-y-2 text-gray-600">
                  <div className="flex justify-between"><span>Subtotal</span><span>₹{formatPrice(subtotal)}</span></div>
                  <div className="flex justify-between"><span>Shipping</span><span>{shipping === 0 ? 'Free' : `₹${shipping}`}</span></div>
                  <hr />
                  <div className="flex justify-between text-lg font-bold text-gray-800"><span>Total</span><span>₹{formatPrice(total)}</span></div>
                </div>
                <button onClick={() => navigate(isAuthenticated ? '/checkout' : '/login?redirect=/checkout')} className="w-full mt-6 py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600 transition-colors">
                  Proceed to Checkout
                </button>
              </div>
            </div>
          </div>
        )}
      </div>
    </>
  )
}

export default Cart
