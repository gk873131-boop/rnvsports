import { useState, useEffect } from 'react'
import { useSearchParams } from 'react-router-dom'
import SEO from '../components/common/SEO'
import ProductCard from '../components/common/ProductCard'
import LoadingSpinner from '../components/common/LoadingSpinner'
import { productService } from '../services/services'

const Search = () => {
  const [params] = useSearchParams()
  const query = params.get('q') || ''
  const [products, setProducts] = useState([])
  const [loading, setLoading] = useState(false)

  useEffect(() => {
    if (!query) return
    setLoading(true)
    productService.getAll({ search: query, limit: 24 })
      .then(res => setProducts(res.data || []))
      .catch(() => setProducts([]))
      .finally(() => setLoading(false))
  }, [query])

  return (
    <>
      <SEO title={`Search: ${query}`} description={`Search results for ${query}`} />
      <div className="bg-gray-100 py-4"><div className="container text-gray-600">Search Results</div></div>

      <div className="container py-8">
        <h1 className="text-2xl font-bold mb-6">Search: "{query}"</h1>
        <p className="text-gray-600 mb-8">{loading ? 'Searching...' : `${products.length} results found`}</p>
        {loading ? (
          <LoadingSpinner className="py-16" />
        ) : products.length > 0 ? (
          <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
            {products.map(p => <ProductCard key={p.product_id} product={p} />)}
          </div>
        ) : (
          <div className="text-center py-12 text-gray-500">No products found for "{query}"</div>
        )}
      </div>
    </>
  )
}

export default Search
