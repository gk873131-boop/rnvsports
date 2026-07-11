const BASE_URL = import.meta.env.VITE_BASE_URL || 'http://localhost:5000';

export function formatPrice(amount) {
  if (amount === null || amount === undefined) return '₹0';
  return new Intl.NumberFormat('en-IN', {
    style: 'currency',
    currency: 'INR',
    minimumFractionDigits: 0,
    maximumFractionDigits: 0,
  }).format(amount);
}

export function calculateDiscount(regular, sale) {
  if (!regular || !sale || regular <= 0) return 0;
  return Math.round(((regular - sale) / regular) * 100);
}

export function truncateText(text, maxLength = 80) {
  if (!text) return '';
  if (text.length <= maxLength) return text;
  return text.slice(0, maxLength).trimEnd() + '...';
}

export function slugify(str) {
  if (!str) return '';
  return str.toLowerCase().replace(/\s+/g, '-').replace(/[^\w-]/g, '').replace(/-+/g, '-');
}

export function validateEmail(email) {
  return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
}

export function validatePhone(phone) {
  return /^[6-9]\d{9}$/.test(phone.replace(/\s/g, ''));
}

export function validatePincode(pin) {
  return /^\d{6}$/.test(pin);
}

export function getImageUrl(filename) {
  const PLACEHOLDER = 'data:image/svg+xml,' + encodeURIComponent(
    '<svg xmlns="http://www.w3.org/2000/svg" width="400" height="400" viewBox="0 0 400 400">' +
    '<rect width="400" height="400" fill="#f3f4f6"/>' +
    '<text x="200" y="200" font-family="sans-serif" font-size="18" fill="#9ca3af" text-anchor="middle" dominant-baseline="middle">No Image</text>' +
    '</svg>'
  );
  if (!filename) return PLACEHOLDER;
  if (filename.startsWith('http')) return filename;
  if (filename.startsWith('data:')) return filename;
  return `${BASE_URL}/uploads/${filename}`;
}

export function formatDate(dateStr) {
  if (!dateStr) return '';
  try {
    return new Intl.DateTimeFormat('en-IN', {
      year: 'numeric', month: 'long', day: 'numeric'
    }).format(new Date(dateStr));
  } catch { return dateStr; }
}

export function getShippingCost(subtotal) {
  return subtotal >= 500 ? 0 : 50;
}

export function classNames(...classes) {
  return classes.filter(Boolean).join(' ');
}

export function getOrderStatusClass(status) {
  const map = {
    Pending:    'status-pending',
    Processing: 'status-processing',
    Dispatched: 'status-dispatched',
    Delivered:  'status-delivered',
    Cancelled:  'status-cancelled',
  };
  return map[status] || 'status-pending';
}

export function stripHtml(html) {
  if (!html) return '';
  return html.replace(/<[^>]*>/g, '').trim();
}
