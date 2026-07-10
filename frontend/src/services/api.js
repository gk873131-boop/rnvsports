import axios from 'axios';
import Cookies from 'js-cookie';

const BASE_URL = import.meta.env.VITE_API_URL || 'http://localhost:5000/api';
const CART_COOKIE_KEY = 'rnv_cart_id';
const AUTH_TOKEN_KEY  = 'rnv_token';

const api = axios.create({
  baseURL: BASE_URL,
  headers: { 'Content-Type': 'application/json' },
  timeout: 15000,
});

api.interceptors.request.use((config) => {
  const token = localStorage.getItem(AUTH_TOKEN_KEY);
  if (token) config.headers.Authorization = `Bearer ${token}`;

  const cartCookie = Cookies.get(CART_COOKIE_KEY);
  if (cartCookie) config.headers['X-Cart-Cookie'] = cartCookie;

  return config;
});

api.interceptors.response.use(
  (response) => {
    const cartCookie = response.headers['x-cart-cookie'];
    if (cartCookie) Cookies.set(CART_COOKIE_KEY, cartCookie, { expires: 30 });
    return response.data;
  },
  (error) => {
    if (error.response?.status === 401) {
      localStorage.removeItem(AUTH_TOKEN_KEY);
    }
    const message =
      error.response?.data?.message ||
      error.message ||
      'Something went wrong';
    return Promise.reject({ message, status: error.response?.status });
  }
);

export default api;
export { AUTH_TOKEN_KEY, CART_COOKIE_KEY };
