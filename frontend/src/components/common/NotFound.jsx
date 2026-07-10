import { Link } from 'react-router-dom'

const NotFound = () => (
  <div className="min-h-[60vh] flex items-center justify-center">
    <div className="text-center">
      <h1 className="text-[120px] md:text-[180px] font-bold text-[#ee7203] leading-none">404</h1>
      <h2 className="text-2xl md:text-3xl font-semibold mb-4">Page Not Found</h2>
      <p className="text-gray-500 mb-8 max-w-md mx-auto">
        The page you are looking for might have been removed or is temporarily unavailable.
      </p>
      <Link to="/" className="inline-block px-6 py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600 transition-colors">
        Go Home
      </Link>
    </div>
  </div>
)

export default NotFound
