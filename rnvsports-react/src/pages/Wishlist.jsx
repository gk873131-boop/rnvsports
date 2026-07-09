import { motion } from 'framer-motion';
import { Link } from 'react-router-dom';
import { FiHeart, FiTrash2, FiShoppingCart } from 'react-icons/fi';
import { useWishlist, useCart, useAuth } from '../context/Context';
import EmptyState from '../components/common/EmptyState';

const Wishlist = () => {
  const { items, loading, removeItem } = useWishlist();
  const { addItem } = useCart();
  const { isAuthenticated } = useAuth();

  const handleRemove = async (id) => {
    await removeItem(id);
  };

  const handleAddToCart = async (item) => {
    const product = item.product;
    const price = product?.sale_price || product?.regular_price;
    await addItem(product, { quantity: 1, price });
    await removeItem(item.id);
  };

  if (!isAuthenticated) {
    return (
      <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} className="py-16">
        <div className="container">
          <EmptyState
            icon={FiHeart}
            title="Please Login"
            description="Login to view your wishlist items"
            action={() => window.location.href = '/login?redirect=/wishlist'}
            actionLabel="Login Now"
          />
        </div>
      </motion.div>
    );
  }

  if (loading) {
    return (
      <div className="min-h-[60vh] flex items-center justify-center">
        <div className="animate-spin w-12 h-12 border-4 border-[#ee7203] border-t-transparent rounded-full" />
      </div>
    );
  }

  return (
    <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }}>
      <div className="bg-gray-100 py-4">
        <div className="container text-gray-600">Wishlist</div>
      </div>
      <section className="py-12 bg-white">
        <div className="container">
          <h1 className="text-3xl font-bold mb-8">My Wishlist ({items.length})</h1>

          {items.length === 0 ? (
            <EmptyState
              icon={FiHeart}
              title="Your wishlist is empty"
              description="Save items you love to your wishlist"
              action={() => window.location.href = '/shop'}
              actionLabel="Start Shopping"
            />
          ) : (
            <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-6">
              {items.map((item) => {
                const product = item.product;
                if (!product) return null;
                const price = product.sale_price || product.regular_price;

                return (
                  <motion.div
                    key={item.id}
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                    exit={{ opacity: 0, y: -20 }}
                    className="bg-white rounded-lg shadow-sm border overflow-hidden group"
                  >
                    <Link to={`/product/${product.slug}`} className="block relative">
                      <div className="aspect-square bg-gray-100">
                        {product.featured_image ? (
                          <img
                            src={product.featured_image}
                            alt={product.name}
                            className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
                          />
                        ) : (
                          <div className="w-full h-full flex items-center justify-center text-gray-400">
                            No Image
                          </div>
                        )}
                      </div>
                    </Link>
                    <div className="p-4">
                      <Link to={`/product/${product.slug}`} className="block">
                        <h3 className="font-semibold text-gray-800 mb-2 line-clamp-2 hover:text-[#ee7203]">
                          {product.name}
                        </h3>
                      </Link>
                      <div className="flex items-center gap-2 mb-4">
                        <span className="text-[#ee7203] font-bold text-lg">
                          Rs.{price?.toLocaleString()}
                        </span>
                        {product.regular_price > price && (
                          <span className="text-gray-400 line-through text-sm">
                            Rs.{product.regular_price?.toLocaleString()}
                          </span>
                        )}
                      </div>
                      <div className="flex gap-2">
                        <button
                          onClick={() => handleAddToCart(item)}
                          className="flex-1 flex items-center justify-center gap-2 px-4 py-2 bg-[#ee7203] text-white rounded-lg hover:bg-orange-600 transition-colors"
                        >
                          <FiShoppingCart />
                          <span>Add to Cart</span>
                        </button>
                        <button
                          onClick={() => handleRemove(item.id)}
                          className="p-2 text-red-500 hover:bg-red-50 rounded-lg transition-colors"
                        >
                          <FiTrash2 />
                        </button>
                      </div>
                    </div>
                  </motion.div>
                );
              })}
            </div>
          )}
        </div>
      </section>
    </motion.div>
  );
};

export default Wishlist;
