import { useState, useEffect } from 'react'
import { useSearchParams } from 'react-router-dom'
import SEO from '../components/common/SEO'
import ProductCard from '../components/common/ProductCard'
import LoadingSpinner from '../components/common/LoadingSpinner'
import { productService, categoryService, brandService } from '../services/services'

const Shop = () => {
  const [params, setParams] = useSearchParams()
  const [products, setProducts] = useState([])
  const [categories, setCategories] = useState([])
  const [brands, setBrands] = useState([])
  const [loading, setLoading] = useState(true)
  const [pagination, setPagination] = useState({ page: 1, total: 0, totalPages: 1 })

  const page = parseInt(params.get('page') || '1')
  const sort = params.get('sort') || 'newest'
  const categorySlug = params.get('category') || ''
  const brandSlug = params.get('brand') || ''
  const search = params.get('q') || ''

  useEffect(() => {
    categoryService.getAll().then(res => setCategories(res.data || [])).catch(() => {})
    brandService.getAll().then(res => setBrands(res.data || [])).catch(() => {})
  }, [])

  useEffect(() => {
    const load = async () => {
      setLoading(true)
      try {
        let res
        if (categorySlug) {
          res = await productService.getByCategory(categorySlug, { page, limit: 12 })
        } else if (brandSlug) {
          res = await productService.getByBrand(brandSlug)
        } else {
          res = await productService.getAll({ page, limit: 12, sort, search })
        }
        setProducts(res.data || [])
        if (res.pagination) setPagination(res.pagination)
      } catch (e) {
        setProducts([])
      }
      setLoading(false)
    }
    load()
  }, [page, sort, categorySlug, brandSlug, search])

  const updateParam = (key, value) => {
    const newParams = new URLSearchParams(params)
    if (value) newParams.set(key, value)
    else newParams.delete(key)
    setParams(newParams)
  }

  return (
    <>
      <SEO title="Shop" description="Browse all products at RNV Sports" />
      <div className="bg-gray-100 py-4">
        <div className="container">
          <span className="text-gray-600">Home / Products</span>
        </div>
      </div>

      <div className="container py-8">
        <div className="flex gap-8">
          {/* Sidebar */}
          <aside className="hidden lg:block w-64 flex-shrink-0">
            <div className="bg-white rounded-lg shadow-sm p-6 sticky top-24">
              <h3 className="font-semibold mb-4">Categories</h3>
              <ul className="space-y-2 mb-6">
                <li>
                  <button onClick={() => updateParam('category', '')} className={`text-sm ${!categorySlug ? 'text-[#ee7203] font-medium' : 'text-gray-600 hover:text-[#ee7203]'}`}>All</button>
                </li>
                {categories.map(c => (
                  <li key={c.category_id}>
                    <button onClick={() => updateParam('category', c.category_slug)} className={`text-sm ${categorySlug === c.category_slug ? 'text-[#ee7203] font-medium' : 'text-gray-600 hover:text-[#ee7203]'}`}>{c.category_name}</button>
                  </li>
                ))}
              </ul>

              <h3 className="font-semibold mb-4">Brands</h3>
              <ul className="space-y-2">
                <li>
                  <button onClick={() => updateParam('brand', '')} className={`text-sm ${!brandSlug ? 'text-[#ee7203] font-medium' : 'text-gray-600 hover:text-[#ee7203]'}`}>All</button>
                </li>
                {brands.map(b => (
                  <li key={b.id}>
                    <button onClick={() => updateParam('brand', b.slug)} className={`text-sm ${brandSlug === b.slug ? 'text-[#ee7203] font-medium' : 'text-gray-600 hover:text-[#ee7203]'}`}>{b.title}</button>
                  </li>
                ))}
              </ul>
            </div>
          </aside>

          {/* Products */}
          <main className="flex-1">
            <div className="bg-white rounded-lg shadow-sm p-4 mb-6 flex items-center justify-between">
              <span className="text-gray-500">{pagination.total || products.length} products</span>
              <select value={sort} onChange={(e) => updateParam('sort', e.target.value)} className="px-4 py-2 border rounded-lg focus:outline-none focus:border-[#ee7203]">
                <option value="newest">Newest</option>
                <option value="price_asc">Price: Low to High</option>
                <option value="price_desc">Price: High to Low</option>
                <option value="name_asc">Name A-Z</option>
                <option value="name_desc">Name Z-A</option>
              </select>
            </div>

            {loading ? (
              <LoadingSpinner className="py-16" />
            ) : products.length > 0 ? (
              <>
                <div className="grid grid-cols-2 md:grid-cols-3 gap-4 md:gap-6">
                  {products.map(p => <ProductCard key={p.product_id} product={p} />)}
                </div>
                {pagination.totalPages > 1 && (
                  <div className="flex justify-center gap-2 mt-8">
                    <button disabled={page <= 1} onClick={() => updateParam('page', String(page - 1))} className="px-4 py-2 border rounded-lg disabled:opacity-50 hover:bg-gray-50">Prev</button>
                    <span className="px-4 py-2 text-gray-600">Page {page} of {pagination.totalPages}</span>
                    <button disabled={page >= pagination.totalPages} onClick={() => updateParam('page', String(page + 1))} className="px-4 py-2 border rounded-lg disabled:opacity-50 hover:bg-gray-50">Next</button>
                  </div>
                )}
              </>
            ) : (
              <div className="text-center py-12 text-gray-500">No products found</div>
            )}
          </main>
        </div>
      </div>
    </>
  )
}

export default Shop
