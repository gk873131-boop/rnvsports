import axios from 'axios'
import Cookies from 'js-cookie'

const API_URL = import.meta.env.VITE_API_URL || 'http://localhost:5000/api'

const api = axios.create({
  baseURL: API_URL,
  timeout: 30000,
  headers: { 'Content-Type': 'application/json' },
})

// Request interceptor - attach auth token
api.interceptors.request.use(
  (config) => {
    const token = localStorage.getItem('token')
    if (token) config.headers.Authorization = `Bearer ${token}`
    const cartCookie = Cookies.get('cart_cookie')
    if (cartCookie) config.headers['X-Cart-Cookie'] = cartCookie
    return config
  },
  (error) => Promise.reject(error)
)

// Response interceptor - handle errors
api.interceptors.response.use(
  (response) => {
    if (response.headers['x-cart-cookie']) {
      Cookies.set('cart_cookie', response.headers['x-cart-cookie'], { expires: 30 })
    }
    return response.data
  },
  (error) => {
    if (error.response) {
      if (error.response.status === 401) {
        localStorage.removeItem('token')
      }
      return Promise.reject({
        success: false,
        message: error.response.data?.message || 'Request failed',
        status: error.response.status,
      })
    }
    return Promise.reject({ success: false, message: 'Network error' })
  }
)

export default api
