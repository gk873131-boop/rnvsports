import { useState, useEffect } from 'react'
import { useNavigate, useSearchParams } from 'react-router-dom'
import SEO from '../components/common/SEO'
import { useAuth, useCart } from '../context/Context'
import { orderService } from '../services/services'
import { formatPrice, getImageUrl, getShippingCost, validateEmail, validatePhone, validatePincode } from '../utils'

const Checkout = () => {
  const navigate = useNavigate()
  const [params] = useSearchParams()
  const { isAuthenticated, user, profile } = useAuth()
  const { items, subtotal, clearCart } = useCart()
  const [form, setForm] = useState({
    firstName: profile?.customer_fname || '', lastName: profile?.customer_lname || '',
    email: profile?.customer_email || user?.email || '', phone: profile?.customer_mobile || '',
    address: profile?.customer_address1 || '', city: profile?.customer_city || '',
    state: profile?.customer_state || '', pincode: profile?.customer_pincode || '',
  })
  const [errors, setErrors] = useState({})
  const [loading, setLoading] = useState(false)

  useEffect(() => {
    if (!isAuthenticated) navigate(`/login?redirect=/checkout`)
    if (items.length === 0) navigate('/cart')
  }, [isAuthenticated, items.length, navigate])

  const shipping = getShippingCost(subtotal)
  const total = subtotal + shipping

  const validate = () => {
    const e = {}
    if (!form.firstName) e.firstName = 'Required'
    if (!form.lastName) e.lastName = 'Required'
    if (!form.email || !validateEmail(form.email)) e.email = 'Valid email required'
    if (!form.phone || !validatePhone(form.phone)) e.phone = 'Valid 10-digit phone required'
    if (!form.address) e.address = 'Required'
    if (!form.city) e.city = 'Required'
    if (!form.state) e.state = 'Required'
    if (!form.pincode || !validatePincode(form.pincode)) e.pincode = 'Valid 6-digit pincode required'
    setErrors(e)
    return Object.keys(e).length === 0
  }

  const handleSubmit = async (e) => {
    e.preventDefault()
    if (!validate()) return
    setLoading(true)
    try {
      const orderData = {
        items: items.map(i => ({ productId: i.product_id, quantity: i.product_qty, price: i.cart_price })),
        customerName: `${form.firstName} ${form.lastName}`,
        email: form.email, mobile: form.phone, address: form.address,
        city: form.city, state: form.state, pincode: form.pincode,
        subtotal, shipping, total,
      }
      const res = await orderService.createOrder(orderData)
      if (res.success) {
        await clearCart()
        navigate(`/order-success?order=${res.data.order_no || ''}`)
      }
    } catch (err) {
      setErrors({ submit: err.message || 'Failed to place order' })
    }
    setLoading(false)
  }

  return (
    <>
      <SEO title="Checkout" />
      <div className="bg-gray-100 py-4"><div className="container text-gray-600">Home / Checkout</div></div>

      <div className="container py-8">
        <h1 className="text-2xl font-bold mb-8">Checkout</h1>
        <form onSubmit={handleSubmit} className="grid lg:grid-cols-3 gap-8">
          <div className="lg:col-span-2">
            {errors.submit && <div className="bg-red-50 border border-red-200 text-red-700 p-4 rounded-lg mb-4">{errors.submit}</div>}
            <div className="bg-white rounded-lg shadow-sm p-6">
              <h2 className="text-lg font-semibold mb-4">Billing Details</h2>
              <div className="grid sm:grid-cols-2 gap-4">
                {[
                  { name: 'firstName', label: 'First Name' }, { name: 'lastName', label: 'Last Name' },
                  { name: 'email', label: 'Email', type: 'email' }, { name: 'phone', label: 'Phone' },
                  { name: 'address', label: 'Address', full: true }, { name: 'city', label: 'City' },
                  { name: 'state', label: 'State' }, { name: 'pincode', label: 'Pincode' }
                ].map(({ name, label, type = 'text', full }) => (
                  <div key={name} className={full ? 'sm:col-span-2' : ''}>
                    <label className="block text-sm font-medium mb-1">{label} <span className="text-red-500">*</span></label>
                    <input type={type} value={form[name]} onChange={(e) => setForm({ ...form, [name]: e.target.value })} className={`w-full px-4 py-2 border rounded-lg ${errors[name] ? 'border-red-500' : 'border-gray-300'} focus:outline-none focus:border-[#ee7203]`} />
                    {errors[name] && <p className="text-red-500 text-sm mt-1">{errors[name]}</p>}
                  </div>
                ))}
              </div>
            </div>
          </div>

          <div>
            <div className="bg-white rounded-lg shadow-sm p-6 sticky top-24">
              <h2 className="text-lg font-semibold mb-4">Your Order</h2>
              <div className="space-y-3 mb-4">
                {items.map(item => (
                  <div key={item.cart_id} className="flex gap-3">
                    <img src={getImageUrl(item.featured_image)} alt="" className="w-12 h-12 object-cover rounded" />
                    <div className="flex-1 text-sm">
                      <p className="font-medium">{item.product_name}</p>
                      <p className="text-gray-500">Qty: {item.product_qty}</p>
                    </div>
                    <p className="font-medium">₹{formatPrice(item.cart_price * item.product_qty)}</p>
                  </div>
                ))}
              </div>
              <div className="border-t pt-4 space-y-2 text-gray-600">
                <div className="flex justify-between"><span>Subtotal</span><span>₹{formatPrice(subtotal)}</span></div>
                <div className="flex justify-between"><span>Shipping</span><span>{shipping === 0 ? 'Free' : `₹${shipping}`}</span></div>
                <hr />
                <div className="flex justify-between font-bold text-lg text-gray-800"><span>Total</span><span>₹{formatPrice(total)}</span></div>
              </div>
              <button type="submit" disabled={loading} className="w-full mt-6 py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600 transition-colors disabled:opacity-50">
                {loading ? 'Processing...' : `Place Order - ₹${formatPrice(total)}`}
              </button>
            </div>
          </div>
        </form>
      </div>
    </>
  )
}

export default Checkout
