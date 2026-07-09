import { Link } from 'react-router-dom';
import { motion } from 'framer-motion';
import { FiHeart, FiShoppingCart } from 'react-icons/fi';
import { useCart, useWishlist } from '../../context/Context';

const ProductCard = ({ product }) => {
  const { addItem } = useCart();
  const { addItem: addWishlist, removeItem: removeWishlist, isInWishlist } = useWishlist();
  const inWishlist = isInWishlist(product.id);
  const price = product.sale_price || product.regular_price;
  const discount = product.regular_price > price ? Math.round(((product.regular_price - price) / product.regular_price) * 100) : 0;

  const handleCart = async (e) => {
    e.preventDefault();
    await addItem(product, { quantity: 1, price });
  };

  const handleWishlist = async (e) => {
    e.preventDefault();
    if (inWishlist) {
      const item = (await import('../../services/api')).wishlistService.getByUser?.();
    } else {
      await addWishlist(product, price);
    }
  };

  return (
    <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} className="group bg-white rounded-lg overflow-hidden shadow-sm hover:shadow-lg transition-shadow">
      <Link to={`/product/${product.slug}`} className="block relative">
        <div className="relative aspect-square overflow-hidden bg-gray-100">
          {product.featured_image ? (
            <img src={product.featured_image} alt={product.name} className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500" loading="lazy" />
          ) : (
            <div className="w-full h-full flex items-center justify-center text-gray-400">No Image</div>
          )}
          <div className="absolute top-2 left-2 flex flex-col gap-1">
            {product.special && <span className="badge badge-hot text-xs">Hot</span>}
            {product.new_arrival && <span className="badge badge-new text-xs">New</span>}
            {discount > 0 && <span className="badge badge-sale text-xs">-{discount}%</span>}
          </div>
          <div className="absolute inset-0 bg-black/40 opacity-0 group-hover:opacity-100 transition-opacity flex items-center justify-center gap-3">
            <motion.button whileHover={{ scale: 1.1 }} whileTap={{ scale: 0.9 }} onClick={handleWishlist} className={`p-3 rounded-full ${inWishlist ? 'bg-[#ee7203] text-white' : 'bg-white text-gray-700'} hover:bg-[#ee7203] hover:text-white transition-colors`}><FiHeart /></motion.button>
            <motion.button whileHover={{ scale: 1.1 }} whileTap={{ scale: 0.9 }} onClick={handleCart} className="p-3 rounded-full bg-white text-gray-700 hover:bg-[#ee7203] hover:text-white transition-colors"><FiShoppingCart /></motion.button>
          </div>
        </div>
        <div className="p-3">
          {product.category && <p className="text-xs text-gray-500">{product.category.name}</p>}
          <h3 className="font-semibold text-gray-800 text-sm line-clamp-2 group-hover:text-[#ee7203] transition-colors">{product.name}</h3>
          <div className="flex items-center gap-2 mt-1">
            <span className="text-[#ee7203] font-bold">₹{price?.toLocaleString()}</span>
            {discount > 0 && <span className="text-xs text-gray-400 line-through">₹{product.regular_price?.toLocaleString()}</span>}
          </div>
        </div>
      </Link>
    </motion.div>
  );
};

export default ProductCard;
