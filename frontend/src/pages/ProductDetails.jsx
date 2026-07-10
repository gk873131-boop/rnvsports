import { useState, useEffect } from 'react'
import { useParams, Link } from 'react-router-dom'
import { FiHeart, FiShoppingCart, FiMinus, FiPlus, FiTruck, FiShield, FiRefreshCw } from 'react-icons/fi'
import SEO from '../components/common/SEO'
import LoadingSpinner from '../components/common/LoadingSpinner'
import ProductCard from '../components/common/ProductCard'
import { productService } from '../services/services'
import { useCart, useWishlist } from '../context/Context'
import { formatPrice, calculateDiscount, getImageUrl } from '../utils'

const ProductDetails = () => {
  const { slug } = useParams()
  const [product, setProduct] = useState(null)
  const [related, setRelated] = useState([])
  const [loading, setLoading] = useState(true)
  const [imageIndex, setImageIndex] = useState(0)
  const [selectedSize, setSelectedSize] = useState(null)
  const [quantity, setQuantity] = useState(1)
  const [tab, setTab] = useState('description')
  const [adding, setAdding] = useState(false)
  const [msg, setMsg] = useState('')

  const { addItem } = useCart()
  const { addItem: addWish, isInWishlist } = useWishlist()

  useEffect(() => {
    const load = async () => {
      setLoading(true)
      try {
        const res = await productService.getBySlug(slug)
        if (res.success && res.data) {
          setProduct(res.data)
          if (res.data.sizes?.length) setSelectedSize(res.data.sizes[0])
          if (res.data.product_id) {
            const relRes = await productService.getRelated(res.data.product_id)
            setRelated(relRes.data || [])
          }
        }
      } catch (e) {
        setProduct(null)
      }
      setLoading(false)
    }
    load()
  }, [slug])

  if (loading) return <LoadingSpinner className="min-h-[60vh]" />
  if (!product) return (
    <div className="container py-16 text-center">
      <h1 className="text-2xl font-semibold">Product not found</h1>
      <Link to="/shop" className="text-[#ee7203] mt-4 inline-block">Back to Shop</Link>
    </div>
  )

  const galleryImages = product.gallery?.map(g => getImageUrl(g.image)) || []
  const mainImage = getImageUrl(product.featured_image)
  const allImages = [mainImage, ...galleryImages].filter(Boolean)
  const salePrice = selectedSize?.price || product.sale_price || product.regular_price
  const discount = calculateDiscount(product.regular_price, salePrice)
  const inWishlist = isInWishlist(product.product_id)

  const handleCart = async () => {
    setAdding(true)
    await addItem(product.product_id, quantity, salePrice, selectedSize?.price_id || null, null)
    setMsg('Added to cart!')
    setAdding(false)
    setTimeout(() => setMsg(''), 3000)
  }

  const handleWishlist = async () => {
    await addWish(product.product_id, salePrice)
  }

  return (
    <>
      <SEO title={product.product_name} description={product.short_description} image={mainImage} />

      <div className="bg-gray-100 py-4">
        <div className="container">
          <span className="text-gray-600 text-sm">Home / {product.category_name || 'Products'} / {product.product_name}</span>
        </div>
      </div>

      <div className="container py-8">
        <div className="grid lg:grid-cols-2 gap-8">
          {/* Images */}
          <div>
            <div className="relative aspect-square bg-gray-100 rounded-lg overflow-hidden">
              {allImages[imageIndex] && <img src={allImages[imageIndex]} alt={product.product_name} className="w-full h-full object-contain" />}
              {discount > 0 && <span className="absolute top-4 left-4 bg-red-500 text-white px-3 py-1 rounded text-sm font-semibold">-{discount}%</span>}
            </div>
            {allImages.length > 1 && (
              <div className="flex gap-2 mt-4 overflow-x-auto">
                {allImages.map((img, i) => (
                  <button key={i} onClick={() => setImageIndex(i)} className={`flex-shrink-0 w-20 h-20 rounded-lg overflow-hidden border-2 ${imageIndex === i ? 'border-[#ee7203]' : 'border-transparent'}`}>
                    <img src={img} alt="" className="w-full h-full object-cover" />
                  </button>
                ))}
              </div>
            )}
          </div>

          {/* Info */}
          <div>
            {product.brand_title && <Link to={`/brand/${product.brand_slug}`} className="text-[#ee7203] font-medium">{product.brand_title}</Link>}
            <h1 className="text-2xl md:text-3xl font-bold text-gray-800 mt-2">{product.product_name}</h1>
            {product.product_code && <p className="text-gray-500 text-sm">SKU: {product.product_code}</p>}

            <div className="flex items-center gap-4 mt-4">
              <span className="text-3xl font-bold text-[#ee7203]">₹{formatPrice(salePrice)}</span>
              {discount > 0 && <span className="text-xl text-gray-400 line-through">₹{formatPrice(product.regular_price)}</span>}
            </div>

            {product.short_description && <p className="text-gray-600 mt-4" dangerouslySetInnerHTML={{ __html: product.short_description }} />}

            {/* Sizes */}
            {product.sizes?.length > 0 && (
              <div className="mt-6">
                <h3 className="font-semibold mb-2">Size:</h3>
                <div className="flex flex-wrap gap-2">
                  {product.sizes.map(s => (
                    <button key={s.price_id} onClick={() => setSelectedSize(s)} className={`px-4 py-2 border-2 rounded-lg transition-colors ${selectedSize?.price_id === s.price_id ? 'border-[#ee7203] bg-[#ee7203] text-white' : 'border-gray-300 hover:border-[#ee7203]'}`}>
                      {s.age} {s.price !== salePrice && <span className="text-xs ml-1">₹{formatPrice(s.price)}</span>}
                    </button>
                  ))}
                </div>
              </div>
            )}

            {/* Quantity */}
            <div className="mt-6">
              <h3 className="font-semibold mb-2">Quantity:</h3>
              <div className="flex items-center gap-3">
                <button onClick={() => setQuantity(Math.max(1, quantity - 1))} className="w-10 h-10 border rounded-lg flex items-center justify-center hover:bg-gray-100"><FiMinus /></button>
                <input type="number" value={quantity} onChange={(e) => setQuantity(Math.max(1, Math.min(10, parseInt(e.target.value) || 1)))} className="w-16 text-center border rounded-lg py-2" />
                <button onClick={() => setQuantity(Math.min(10, quantity + 1))} className="w-10 h-10 border rounded-lg flex items-center justify-center hover:bg-gray-100"><FiPlus /></button>
              </div>
            </div>

            {/* Actions */}
            <div className="flex gap-3 mt-6">
              <button onClick={handleCart} disabled={adding} className="flex-1 flex items-center justify-center gap-2 py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600 transition-colors disabled:opacity-50">
                <FiShoppingCart /> {adding ? 'Adding...' : 'Add to Cart'}
              </button>
              <button onClick={handleWishlist} className={`px-4 py-3 border-2 rounded-lg transition-colors ${inWishlist ? 'border-red-500 bg-red-50 text-red-500' : 'border-red-500 text-red-500 hover:bg-red-50'}`}>
                <FiHeart />
              </button>
            </div>

            {msg && <p className="text-green-600 mt-3">{msg}</p>}

            {/* Trust badges */}
            <div className="grid grid-cols-3 gap-4 mt-6">
              {[
                { Icon: FiTruck, t: 'Free Shipping', d: 'All over India' },
                { Icon: FiShield, t: 'Secure Payment', d: 'SSL Encrypted' },
                { Icon: FiRefreshCw, t: '15 Days Return', d: 'Easy return' }
              ].map(({ Icon, t, d }, i) => (
                <div key={i} className="flex items-center gap-2 p-3 bg-gray-50 rounded-lg">
                  <Icon className="text-[#ee7203]" />
                  <div>
                    <p className="font-medium text-sm">{t}</p>
                    <p className="text-xs text-gray-500">{d}</p>
                  </div>
                </div>
              ))}
            </div>
          </div>
        </div>

        {/* Tabs */}
        <div className="mt-12">
          <div className="flex border-b">
            {['description', 'specification'].map(t => (
              <button key={t} onClick={() => setTab(t)} className={`pb-3 px-6 font-semibold capitalize transition-colors ${tab === t ? 'text-[#ee7203] border-b-2 border-[#ee7203]' : 'text-gray-500 hover:text-gray-700'}`}>{t}</button>
            ))}
          </div>
          <div className="py-6">
            {tab === 'description' && <div className="prose max-w-none" dangerouslySetInnerHTML={{ __html: product.description || '<p>No description available.</p>' }} />}
            {tab === 'specification' && <div className="prose max-w-none" dangerouslySetInnerHTML={{ __html: product.specification || '<p>No specifications available.</p>' }} />}
          </div>
        </div>

        {/* Related */}
        {related.length > 0 && (
          <div className="mt-16">
            <h2 className="text-2xl font-bold mb-8">Related Products</h2>
            <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
              {related.slice(0, 4).map(p => <ProductCard key={p.product_id} product={p} />)}
            </div>
          </div>
        )}
      </div>
    </>
  )
}

export default ProductDetails
