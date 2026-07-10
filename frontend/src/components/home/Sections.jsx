import { useState, useEffect } from 'react'
import { Link } from 'react-router-dom'
import { categoryService, brandService } from '../../services/services'
import { getImageUrl } from '../../utils'

const CategorySection = () => {
  const [categories, setCategories] = useState([])
  useEffect(() => {
    categoryService.getAll().then(res => setCategories(res.data || [])).catch(() => {})
  }, [])

  return (
    <section className="py-12 bg-gray-50">
      <div className="container">
        <h2 className="section-title">Shop by Category</h2>
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
          {categories.slice(0, 8).map(cat => (
            <Link key={cat.category_id} to={`/category/${cat.category_slug}`} className="bg-white p-4 rounded-lg text-center hover:shadow-md transition-shadow">
              <div className="w-16 h-16 bg-gray-100 rounded-full mx-auto mb-2 flex items-center justify-center text-2xl text-gray-400">
                {cat.category_name?.[0]}
              </div>
              <h3 className="font-medium text-sm">{cat.category_name}</h3>
            </Link>
          ))}
        </div>
      </div>
    </section>
  )
}

const BrandSection = () => {
  const [brands, setBrands] = useState([])
  useEffect(() => {
    brandService.getAll().then(res => setBrands(res.data || [])).catch(() => {})
  }, [])

  if (!brands.length) return null
  return (
    <section className="py-12 bg-gray-50">
      <div className="container">
        <h2 className="section-title">Our Brands</h2>
        <div className="flex flex-wrap justify-center gap-4">
          {brands.map(b => (
            <Link key={b.id} to={`/brand/${b.slug}`} className="bg-white p-4 rounded-lg hover:shadow-md transition-shadow">
              {b.image ? <img src={getImageUrl(b.image)} alt={b.title} className="h-12 object-contain" /> : <span className="text-gray-600 font-medium">{b.title}</span>}
            </Link>
          ))}
        </div>
      </div>
    </section>
  )
}

const FeaturesSection = () => (
  <section className="py-8 bg-gray-100">
    <div className="container">
      <div className="grid md:grid-cols-4 gap-4 text-center">
        {[
          { title: 'Free Shipping', desc: 'All over India' },
          { title: 'Quality Guaranteed', desc: 'Certified products' },
          { title: '15 Days Return', desc: 'Easy return policy' },
          { title: 'Secure Payment', desc: 'SSL encrypted' }
        ].map((f, i) => (
          <div key={i} className="p-4">
            <h3 className="font-semibold text-gray-800">{f.title}</h3>
            <p className="text-sm text-gray-500">{f.desc}</p>
          </div>
        ))}
      </div>
    </div>
  </section>
)

export { CategorySection, BrandSection, FeaturesSection }
