export const formatPrice = (price) => {
  if (price === null || price === undefined) return '0'
  return new Intl.NumberFormat('en-IN', { maximumFractionDigits: 0 }).format(price)
}

export const calculateDiscount = (regularPrice, salePrice) => {
  if (!regularPrice || regularPrice <= 0) return 0
  const price = salePrice || regularPrice
  if (price >= regularPrice) return 0
  return Math.round(((regularPrice - price) / regularPrice) * 100)
}

export const truncateText = (text, maxLength = 50) => {
  if (!text) return ''
  if (text.length <= maxLength) return text
  return text.substring(0, maxLength).trim() + '...'
}

export const slugify = (text) => {
  return text.toString().toLowerCase().trim()
    .replace(/\s+/g, '-')
    .replace(/[^\w-]+/g, '')
    .replace(/--+/g, '-')
}

export const validateEmail = (email) => /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)

export const validatePhone = (phone) => /^[6-9]\d{9}$/.test(phone)

export const validatePincode = (pincode) => /^[1-9][0-9]{5}$/.test(pincode)

export const getImageUrl = (path, fallback = null) => {
  if (!path) return fallback
  if (path.startsWith('http')) return path
  const baseUrl = (import.meta.env.VITE_API_URL || '').replace('/api', '')
  return `${baseUrl}/uploads/${path}`
}

export const formatDate = (dateString, options = {}) => {
  if (!dateString) return ''
  return new Date(dateString).toLocaleDateString('en-IN', {
    year: 'numeric', month: 'short', day: 'numeric', ...options,
  })
}

export const getShippingCost = (subtotal, threshold = 500) => subtotal >= threshold ? 0 : 50

export const classNames = (...classes) => classes.filter(Boolean).join(' ')
