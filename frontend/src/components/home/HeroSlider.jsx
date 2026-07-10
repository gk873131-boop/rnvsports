import { useState, useEffect, useRef } from 'react'
import { Link } from 'react-router-dom'
import { FiChevronLeft, FiChevronRight } from 'react-icons/fi'
import { bannerService } from '../../services/services'
import { getImageUrl } from '../../utils'
import ProductCard from '../common/ProductCard'

const HeroSlider = () => {
  const [banners, setBanners] = useState([])
  const [index, setIndex] = useState(0)
  const timerRef = useRef(null)

  useEffect(() => {
    const load = async () => {
      try {
        const res = await bannerService.getHomeBanners()
        setBanners(res.data?.length > 0 ? res.data : [{ banner_id: 1, name: 'Welcome to RNV Sports', image: 'https://images.unsplash.com/photo-1534438327276-142e2bae6874?w=1920&h=600&fit=crop' }])
      } catch {
        setBanners([{ banner_id: 1, name: 'Welcome to RNV Sports', image: 'https://images.unsplash.com/photo-1534438327276-142e2bae6874?w=1920&h=600&fit=crop' }])
      }
    }
    load()
  }, [])

  useEffect(() => {
    if (banners.length <= 1) return
    timerRef.current = setInterval(() => setIndex(i => (i + 1) % banners.length), 5000)
    return () => clearInterval(timerRef.current)
  }, [banners.length])

  if (!banners.length) return <div className="w-full h-[400px] bg-gray-100 animate-pulse" />

  return (
    <div className="relative w-full h-[400px] md:h-[500px] overflow-hidden">
      <img src={getImageUrl(banners[index].image) || banners[index].image} alt={banners[index].name} className="w-full h-full object-cover" />
      <div className="absolute inset-0 bg-gradient-to-r from-black/50 to-transparent" />
      <div className="absolute inset-0 flex items-center">
        <div className="container">
          <div className="max-w-xl text-white">
            <h2 className="text-3xl md:text-5xl font-bold mb-4">{banners[index].name}</h2>
            <p className="text-lg mb-6 text-gray-200">Premium sports and fitness equipment</p>
            <Link to="/shop" className="inline-block px-6 py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600 transition-colors">Shop Now</Link>
          </div>
        </div>
      </div>
      {banners.length > 1 && (
        <>
          <button onClick={() => setIndex(i => (i - 1 + banners.length) % banners.length)} className="absolute left-4 top-1/2 -translate-y-1/2 p-2 bg-white/80 rounded-full hover:bg-white transition-colors"><FiChevronLeft /></button>
          <button onClick={() => setIndex(i => (i + 1) % banners.length)} className="absolute right-4 top-1/2 -translate-y-1/2 p-2 bg-white/80 rounded-full hover:bg-white transition-colors"><FiChevronRight /></button>
          <div className="absolute bottom-4 left-1/2 -translate-x-1/2 flex gap-2">
            {banners.map((_, i) => (
              <button key={i} onClick={() => setIndex(i)} className={`w-3 h-3 rounded-full transition-colors ${i === index ? 'bg-[#ee7203]' : 'bg-white/50'}`} />
            ))}
          </div>
        </>
      )}
    </div>
  )
}

const ProductSection = ({ title, fetchFn }) => {
  const [products, setProducts] = useState([])
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    fetchFn().then(res => setProducts(res.data || [])).catch(() => {}).finally(() => setLoading(false))
  }, [fetchFn])

  return (
    <section className="py-12">
      <div className="container">
        <h2 className="section-title">{title}</h2>
        {loading ? (
          <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
            {[...Array(4)].map((_, i) => (
              <div key={i} className="animate-pulse">
                <div className="bg-gray-200 aspect-square rounded-lg mb-3"></div>
                <div className="h-4 bg-gray-200 rounded w-3/4 mb-2"></div>
                <div className="h-4 bg-gray-200 rounded w-1/2"></div>
              </div>
            ))}
          </div>
        ) : (
          <div className="grid grid-cols-2 md:grid-cols-4 gap-4 md:gap-6">
            {products.map(p => <ProductCard key={p.product_id} product={p} />)}
          </div>
        )}
      </div>
    </section>
  )
}

export { HeroSlider, ProductSection }
