import { Link } from 'react-router-dom'
import { FiHeart, FiShoppingCart } from 'react-icons/fi'
import { useCart, useWishlist } from '../../context/Context'
import { formatPrice, calculateDiscount, getImageUrl } from '../../utils'

const ProductCard = ({ product }) => {
  const { addItem } = useCart()
  const { isInWishlist, addItem: addWish, removeItem: removeWish, items: wishItems } = useWishlist()
  const inWishlist = isInWishlist(product.product_id)
  const wishItem = wishItems.find(i => i.product_id === product.product_id)
  const salePrice = product.sale_price || product.regular_price
  const discount = calculateDiscount(product.regular_price, salePrice)

  const handleCart = async (e) => {
    e.preventDefault()
    await addItem(product.product_id, 1, salePrice)
  }

  const handleWishlist = async (e) => {
    e.preventDefault()
    if (inWishlist && wishItem) await removeWish(wishItem.id)
    else await addWish(product.product_id, salePrice)
  }

  return (
    <div className="group bg-white rounded-lg overflow-hidden shadow-sm hover:shadow-lg transition-shadow">
      <Link to={`/product/${product.product_slug}`} className="block relative">
        <div className="relative aspect-square overflow-hidden bg-gray-100">
          {product.featured_image ? (
            <img src={getImageUrl(product.featured_image)} alt={product.product_name} className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500" loading="lazy" />
          ) : (
            <div className="w-full h-full flex items-center justify-center text-gray-400">No Image</div>
          )}
          <div className="absolute top-2 left-2 flex flex-col gap-1">
            {product.special == 1 && <span className="badge badge-hot text-xs">Hot</span>}
            {product.new_arraival == 1 && <span className="badge badge-new text-xs">New</span>}
            {discount > 0 && <span className="badge badge-sale text-xs">-{discount}%</span>}
          </div>
          <div className="absolute inset-0 bg-black/40 opacity-0 group-hover:opacity-100 transition-opacity flex items-center justify-center gap-3">
            <button onClick={handleWishlist} className={`p-3 rounded-full transition-colors ${inWishlist ? 'bg-[#ee7203] text-white' : 'bg-white text-gray-700 hover:bg-[#ee7203] hover:text-white'}`}>
              <FiHeart />
            </button>
            <button onClick={handleCart} className="p-3 rounded-full bg-white text-gray-700 hover:bg-[#ee7203] hover:text-white transition-colors">
              <FiShoppingCart />
            </button>
          </div>
        </div>
        <div className="p-3">
          {product.category_name && <p className="text-xs text-gray-500">{product.category_name}</p>}
          <h3 className="font-semibold text-gray-800 text-sm line-clamp-2 group-hover:text-[#ee7203] transition-colors">{product.product_name}</h3>
          <div className="flex items-center gap-2 mt-1">
            <span className="text-[#ee7203] font-bold">₹{formatPrice(salePrice)}</span>
            {discount > 0 && <span className="text-xs text-gray-400 line-through">₹{formatPrice(product.regular_price)}</span>}
          </div>
        </div>
      </Link>
    </div>
  )
}

export default ProductCard
