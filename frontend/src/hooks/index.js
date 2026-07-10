import { useState, useEffect, useCallback } from 'react'
import { productService } from '../services/services'

export const useProducts = (initialFilters = {}) => {
  const [products, setProducts] = useState([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState(null)
  const [filters, setFilters] = useState(initialFilters)
  const [pagination, setPagination] = useState({ page: 1, total: 0, totalPages: 1 })

  const fetchProducts = useCallback(async () => {
    try {
      setLoading(true)
      setError(null)
      const res = await productService.getAll(filters)
      setProducts(res.data || [])
      setPagination(res.pagination || { page: 1, total: 0, totalPages: 1 })
    } catch (err) {
      setError(err.message || 'Failed to fetch products')
      setProducts([])
    } finally {
      setLoading(false)
    }
  }, [JSON.stringify(filters)])

  useEffect(() => { fetchProducts() }, [fetchProducts])

  const updateFilters = (newFilters) => setFilters(prev => ({ ...prev, ...newFilters }))

  return { products, loading, error, filters, updateFilters, pagination, refetch: fetchProducts }
}

export const useProduct = (slug) => {
  const [product, setProduct] = useState(null)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState(null)

  useEffect(() => {
    if (!slug) return
    const fetchProduct = async () => {
      try {
        setLoading(true)
        setError(null)
        const res = await productService.getBySlug(slug)
        setProduct(res.data)
      } catch (err) {
        setError(err.message || 'Product not found')
        setProduct(null)
      } finally {
        setLoading(false)
      }
    }
    fetchProduct()
  }, [slug])

  return { product, loading, error }
}

export const useDebounce = (value, delay = 300) => {
  const [debouncedValue, setDebouncedValue] = useState(value)
  useEffect(() => {
    const handler = setTimeout(() => setDebouncedValue(value), delay)
    return () => clearTimeout(handler)
  }, [value, delay])
  return debouncedValue
}

export const useScrollToTop = () => {
  useEffect(() => { window.scrollTo(0, 0) }, [])
}

export const useLocalStorage = (key, initialValue) => {
  const [storedValue, setStoredValue] = useState(() => {
    try {
      if (typeof window === 'undefined') return initialValue
      const item = window.localStorage.getItem(key)
      return item ? JSON.parse(item) : initialValue
    } catch (error) {
      return initialValue
    }
  })
  const setValue = (value) => {
    try {
      const valueToStore = value instanceof Function ? value(storedValue) : value
      setStoredValue(valueToStore)
      if (typeof window !== 'undefined') window.localStorage.setItem(key, JSON.stringify(valueToStore))
    } catch (error) {}
  }
  return [storedValue, setValue]
}
