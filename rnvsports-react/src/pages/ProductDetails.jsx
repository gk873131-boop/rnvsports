import { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import { motion } from 'framer-motion';
import { FiHeart, FiShoppingCart, FiMinus, FiPlus, FiTruck, FiShield, FiRefreshCw } from 'react-icons/fi';
import ProductCard from '../components/common/ProductCard';
import { productService } from '../services/api';
import { useCart, useWishlist } from '../context/Context';

const ProductDetails = () => {
  const { slug } = useParams();
  const [product, setProduct] = useState(null);
  const [gallery, setGallery] = useState([]);
  const [sizes, setSizes] = useState([]);
  const [colors, setColors] = useState([]);
  const [related, setRelated] = useState([]);
  const [loading, setLoading] = useState(true);
  const [imageIndex, setImageIndex] = useState(0);
  const [selectedSize, setSelectedSize] = useState(null);
  const [selectedColor, setSelectedColor] = useState(null);
  const [quantity, setQuantity] = useState(1);
  const [tab, setTab] = useState('description');
  const { addItem } = useCart();
  const { addItem: addWishlist, isInWishlist } = useWishlist();

  useEffect(() => {
    const load = async () => {
      setLoading(true);
      try {
        const p = await productService.getBySlug(slug);
        if (!p) return;
        setProduct(p);
        const [g, s, c, r] = await Promise.all([
          productService.getGallery(p.id),
          productService.getSizes(p.id),
          productService.getColors(p.id),
          productService.getRelated(p.id, p.category_id)
        ]);
        setGallery(g); setSizes(s); setColors(c); setRelated(r);
        if (s?.length) setSelectedSize(s[0]);
        if (c?.length) setSelectedColor(c[0]);
      } catch (e) { console.error(e); }
      setLoading(false);
    };
    load();
  }, [slug]);

  if (loading) return <div className="container py-16 text-center"><div className="animate-spin w-12 h-12 border-4 border-[#ee7203] border-t-transparent rounded-full mx-auto" /></div>;
  if (!product) return <div className="container py-16 text-center"><h1 className="text-2xl font-semibold">Product not found</h1></div>;

  const images = [product.featured_image, ...gallery.map(g => g.image)].filter(Boolean);
  const price = selectedSize?.price || product.sale_price || product.regular_price;
  const discount = product.regular_price > price ? Math.round(((product.regular_price - price) / product.regular_price) * 100) : 0;

  const handleCart = async () => {
    await addItem(product, { quantity, sizeId: selectedSize?.id, colorId: selectedColor?.id, price });
  };

  return (
    <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }}>
      <div className="bg-gray-100 py-4"><div className="container text-gray-600">Home / {product.category?.name} / {product.name}</div></div>
      <div className="container py-8">
        <div className="grid lg:grid-cols-2 gap-8">
          <div>
            <div className="relative aspect-square bg-gray-100 rounded-lg overflow-hidden">
              {images[imageIndex] && <img src={images[imageIndex]} alt={product.name} className="w-full h-full object-contain" />}
              {discount > 0 && <span className="absolute top-4 left-4 bg-red-500 text-white px-3 py-1 rounded text-sm font-semibold">-{discount}%</span>}
            </div>
            {images.length > 1 && (
              <div className="flex gap-2 mt-4 overflow-x-auto">
                {images.map((img, i) => (
                  <button key={i} onClick={() => setImageIndex(i)} className={`flex-shrink-0 w-20 h-20 rounded-lg overflow-hidden border-2 ${imageIndex === i ? 'border-[#ee7203]' : 'border-transparent'}`}>
                    <img src={img} alt="" className="w-full h-full object-cover" />
                  </button>
                ))}
              </div>
            )}
          </div>
          <div>
            {product.brand && <Link to={`/brand/${product.brand.slug}`} className="text-[#ee7203] font-medium">{product.brand.title}</Link>}
            <h1 className="text-2xl md:text-3xl font-bold text-gray-800 mt-2">{product.name}</h1>
            {product.code && <p className="text-gray-500 text-sm">SKU: {product.code}</p>}
            <div className="flex items-center gap-4 mt-4">
              <span className="text-3xl font-bold text-[#ee7203]">₹{price?.toLocaleString()}</span>
              {discount > 0 && <span className="text-xl text-gray-400 line-through">₹{product.regular_price?.toLocaleString()}</span>}
            </div>
            {product.short_description && <p className="text-gray-600 mt-4">{product.short_description}</p>}
            {sizes.length > 0 && (
              <div className="mt-6">
                <h3 className="font-semibold mb-2">Size:</h3>
                <div className="flex flex-wrap gap-2">
                  {sizes.map((s) => (
                    <button key={s.id} onClick={() => setSelectedSize(s)} className={`px-4 py-2 border-2 rounded-lg ${selectedSize?.id === s.id ? 'border-[#ee7203] bg-[#ee7203] text-white' : 'border-gray-300 hover:border-[#ee7203]'}`}>
                      {s.size} {s.price !== price && <span className="text-xs">₹{s.price}</span>}
                    </button>
                  ))}
                </div>
              </div>
            )}
            <div className="mt-6">
              <h3 className="font-semibold mb-2">Quantity:</h3>
              <div className="flex items-center gap-3">
                <button onClick={() => setQuantity(Math.max(1, quantity - 1))} className="w-10 h-10 border rounded-lg flex items-center justify-center hover:bg-gray-100"><FiMinus /></button>
                <input type="number" value={quantity} onChange={(e) => setQuantity(Math.max(1, Math.min(10, parseInt(e.target.value) || 1)))} className="w-16 text-center border rounded-lg py-2" />
                <button onClick={() => setQuantity(Math.min(10, quantity + 1))} className="w-10 h-10 border rounded-lg flex items-center justify-center hover:bg-gray-100"><FiPlus /></button>
              </div>
            </div>
            <div className="flex gap-3 mt-6">
              <motion.button whileTap={{ scale: 0.95 }} onClick={handleCart} className="flex-1 flex items-center justify-center gap-2 py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600">
                <FiShoppingCart /> Add to Cart
              </motion.button>
              <motion.button whileTap={{ scale: 0.95 }} onClick={() => addWishlist(product, price)} className="px-4 py-3 border-2 border-red-500 text-red-500 rounded-lg hover:bg-red-50"><FiHeart /></motion.button>
            </div>
            <div className="grid grid-cols-3 gap-4 mt-6">
              {[{ Icon: FiTruck, t: 'Free Shipping', d: 'All over India' }, { Icon: FiShield, t: 'Secure Payment', d: 'SSL Encrypted' }, { Icon: FiRefreshCw, t: '15 Days Return', d: 'Easy return' }].map(({ Icon, t, d }, i) => (
                <div key={i} className="flex items-center gap-2 p-3 bg-gray-50 rounded-lg">
                  <Icon className="text-[#ee7203]" />
                  <div><p className="font-medium text-sm">{t}</p><p className="text-xs text-gray-500">{d}</p></div>
                </div>
              ))}
            </div>
          </div>
        </div>
        <div className="mt-12">
          <div className="flex border-b">
            {['description', 'specification'].map((t) => (
              <button key={t} onClick={() => setTab(t)} className={`pb-3 px-6 font-semibold capitalize ${tab === t ? 'text-[#ee7203] border-b-2 border-[#ee7203]' : 'text-gray-500'}`}>{t}</button>
            ))}
          </div>
          <div className="py-6">
            {tab === 'description' && <div className="prose max-w-none" dangerouslySetInnerHTML={{ __html: product.description || '<p>No description available.</p>' }} />}
            {tab === 'specification' && <div className="prose max-w-none" dangerouslySetInnerHTML={{ __html: product.specification || '<p>No specifications available.</p>' }} />}
          </div>
        </div>
        {related.length > 0 && (
          <div className="mt-16">
            <h2 className="text-2xl font-bold mb-8">Related Products</h2>
            <div className="grid grid-cols-2 md:grid-cols-4 gap-4">{related.slice(0, 4).map((p) => <ProductCard key={p.id} product={p} />)}</div>
          </div>
        )}
      </div>
    </motion.div>
  );
};

export default ProductDetails;
