import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { motion } from 'framer-motion';
import { FiChevronLeft, FiChevronRight } from 'react-icons/fi';
import ProductCard from '../common/ProductCard';
import { productService, categoryService, brandService, contentService } from '../../services/api';

const HeroSlider = () => {
  const [banners, setBanners] = useState([]);
  const [index, setIndex] = useState(0);

  useEffect(() => {
    const load = async () => {
      try {
        const data = await contentService.getBanners();
        setBanners(data?.length > 0 ? data : [{ id: 1, name: 'Welcome to RNV Sports', image: 'https://images.unsplash.com/photo-1534438327276-142e2bae6874?w=1920&h=600&fit=crop', link: '/shop' }]);
      } catch { setBanners([{ id: 1, name: 'Welcome to RNV Sports', image: 'https://images.unsplash.com/photo-1534438327276-142e2bae6874?w=1920&h=600&fit=crop', link: '/shop' }]); }
    };
    load();
  }, []);

  useEffect(() => {
    if (banners.length <= 1) return;
    const t = setInterval(() => setIndex((i) => (i + 1) % banners.length), 5000);
    return () => clearInterval(t);
  }, [banners.length]);

  if (!banners.length) return <div className="w-full h-[400px] bg-gray-100 animate-pulse" />;

  return (
    <div className="relative w-full h-[400px] md:h-[500px] overflow-hidden">
      <motion.img key={index} initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} src={banners[index].image} alt={banners[index].name} className="w-full h-full object-cover" />
      <div className="absolute inset-0 bg-gradient-to-r from-black/50 to-transparent" />
      <div className="absolute inset-0 flex items-center">
        <div className="container">
          <motion.div initial={{ opacity: 0, y: 30 }} animate={{ opacity: 1, y: 0 }} className="max-w-xl text-white">
            <h2 className="text-3xl md:text-5xl font-bold mb-4">{banners[index].name}</h2>
            <p className="text-lg mb-6 text-gray-200">Premium sports and fitness equipment</p>
            <Link to="/shop" className="inline-block px-6 py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600">Shop Now</Link>
          </motion.div>
        </div>
      </div>
      {banners.length > 1 && (
        <>
          <button onClick={() => setIndex((i) => (i - 1 + banners.length) % banners.length)} className="absolute left-4 top-1/2 -translate-y-1/2 p-2 bg-white/80 rounded-full hover:bg-white"><FiChevronLeft /></button>
          <button onClick={() => setIndex((i) => (i + 1) % banners.length)} className="absolute right-4 top-1/2 -translate-y-1/2 p-2 bg-white/80 rounded-full hover:bg-white"><FiChevronRight /></button>
          <div className="absolute bottom-4 left-1/2 -translate-x-1/2 flex gap-2">
            {banners.map((_, i) => <button key={i} onClick={() => setIndex(i)} className={`w-3 h-3 rounded-full ${i === index ? 'bg-[#ee7203]' : 'bg-white/50'}`} />)}
          </div>
        </>
      )}
    </div>
  );
};

const ProductSection = ({ title, fetchFn }) => {
  const [products, setProducts] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetchFn().then(setProducts).catch(() => {}).finally(() => setLoading(false));
  }, [fetchFn]);

  return (
    <section className="py-12">
      <div className="container">
        <h2 className="section-title">{title}</h2>
        {loading ? (
          <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
            {[...Array(4)].map((_, i) => <div key={i} className="animate-pulse"><div className="bg-gray-200 aspect-square rounded-lg mb-3" /><div className="h-4 bg-gray-200 rounded w-3/4" /></div>)}
          </div>
        ) : (
          <div className="grid grid-cols-2 md:grid-cols-4 gap-4 md:gap-6">
            {products.map((p) => <ProductCard key={p.id} product={p} />)}
          </div>
        )}
      </div>
    </section>
  );
};

const CategorySection = () => {
  const [categories, setCategories] = useState([]);
  useEffect(() => {
    categoryService.getAll().then(setCategories).catch(() => {});
  }, []);

  return (
    <section className="py-12 bg-gray-50">
      <div className="container">
        <h2 className="section-title">Shop by Category</h2>
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
          {categories.slice(0, 8).map((cat) => (
            <Link key={cat.id} to={`/category/${cat.slug}`} className="bg-white p-4 rounded-lg text-center hover:shadow-md transition-shadow">
              <div className="w-16 h-16 bg-gray-100 rounded-full mx-auto mb-2 flex items-center justify-center text-2xl text-gray-400">{cat.name[0]}</div>
              <h3 className="font-medium text-sm">{cat.name}</h3>
            </Link>
          ))}
        </div>
      </div>
    </section>
  );
};

const BrandSection = () => {
  const [brands, setBrands] = useState([]);
  useEffect(() => {
    brandService.getAll().then(setBrands).catch(() => {});
  }, []);

  if (!brands.length) return null;
  return (
    <section className="py-12 bg-gray-50">
      <div className="container">
        <h2 className="section-title">Our Brands</h2>
        <div className="flex flex-wrap justify-center gap-4">
          {brands.map((b) => (
            <Link key={b.id} to={`/brand/${b.slug}`} className="bg-white p-4 rounded-lg hover:shadow-md transition-shadow">
              {b.image ? <img src={b.image} alt={b.title} className="h-12 object-contain" /> : <span className="text-gray-600 font-medium">{b.title}</span>}
            </Link>
          ))}
        </div>
      </div>
    </section>
  );
};

const FeaturesSection = () => (
  <section className="py-8 bg-gray-100">
    <div className="container">
      <div className="grid md:grid-cols-4 gap-4 text-center">
        {[
          { title: 'Free Shipping', desc: 'All over India' },
          { title: 'Quality Guaranteed', desc: 'Certified products' },
          { title: '15 Days Return', desc: 'Easy return policy' },
          { title: 'Secure Payment', desc: 'SSL encrypted' }
        ].map((f, i) => (
          <div key={i} className="p-4">
            <h3 className="font-semibold text-gray-800">{f.title}</h3>
            <p className="text-sm text-gray-500">{f.desc}</p>
          </div>
        ))}
      </div>
    </div>
  </section>
);

export { HeroSlider, ProductSection, CategorySection, BrandSection, FeaturesSection };
