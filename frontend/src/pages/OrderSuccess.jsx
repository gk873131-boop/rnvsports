import { useEffect } from 'react'
import { useSearchParams, Link } from 'react-router-dom'
import { FiCheck, FiPackage, FiHome } from 'react-icons/fi'
import SEO from '../components/common/SEO'
import { useCart } from '../context/Context'

const OrderSuccess = () => {
  const [params] = useSearchParams()
  const orderNo = params.get('order') || ''
  const { clearCart } = useCart()

  useEffect(() => { clearCart() }, [])

  return (
    <>
      <SEO title="Order Success" />
      <div className="min-h-[60vh] flex items-center justify-center py-16">
        <div className="container max-w-lg mx-auto text-center">
          <div className="w-24 h-24 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-6">
            <FiCheck className="w-12 h-12 text-green-600" />
          </div>
          <h1 className="text-3xl font-bold text-gray-800 mb-4">Order Placed Successfully!</h1>
          <p className="text-gray-600 mb-6">Thank you for your purchase. Your order has been confirmed and will be shipped soon.</p>
          {orderNo && (
            <div className="bg-gray-100 rounded-lg p-4 mb-8">
              <p className="text-sm text-gray-500 mb-1">Order Number</p>
              <p className="text-xl font-bold text-[#ee7203]">{orderNo}</p>
            </div>
          )}
          <div className="flex flex-col sm:flex-row gap-4 justify-center">
            <Link to="/dashboard" className="inline-flex items-center justify-center gap-2 px-6 py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600 transition-colors">
              <FiPackage /> View Orders
            </Link>
            <Link to="/" className="inline-flex items-center justify-center gap-2 px-6 py-3 bg-gray-200 text-gray-700 rounded-lg font-semibold hover:bg-gray-300 transition-colors">
              <FiHome /> Continue Shopping
            </Link>
          </div>
          <p className="text-sm text-gray-500 mt-8">A confirmation email has been sent to your registered email address.</p>
        </div>
      </div>
    </>
  )
}

export default OrderSuccess
