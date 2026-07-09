import { useState, useEffect } from 'react';
import { useSearchParams } from 'react-router-dom';
import { motion } from 'framer-motion';
import { FiFilter } from 'react-icons/fi';
import ProductCard from '../components/common/ProductCard';
import { productService, categoryService, brandService } from '../services/api';

const Shop = () => {
  const [params, setParams] = useSearchParams();
  const [products, setProducts] = useState([]);
  const [categories, setCategories] = useState([]);
  const [brands, setBrands] = useState([]);
  const [loading, setLoading] = useState(true);
  const [total, setTotal] = useState(0);
  const [page, setPage] = useState(parseInt(params.get('page') || '1'));
  const [sortBy, setSortBy] = useState(params.get('sort') || 'newest');
  const [category, setCategory] = useState(params.get('category') || '');
  const [brand, setBrand] = useState(params.get('brand') || '');
  const [search, setSearch] = useState(params.get('q') || '');
  const [filterOpen, setFilterOpen] = useState(false);

  useEffect(() => {
    categoryService.getAll().then(setCategories).catch(() => {});
    brandService.getAll().then(setBrands).catch(() => {});
  }, []);

  useEffect(() => {
    const load = async () => {
      setLoading(true);
      try {
        const res = await productService.getAll({ page, limit: 12, categoryId: category, brandId: brand, sortBy, search });
        setProducts(res.products);
        setTotal(res.total);
      } catch (e) { console.error(e); }
      setLoading(false);
    };
    load();
  }, [page, category, brand, sortBy, search]);

  const updateParam = (key, value) => {
    const newParams = new URLSearchParams(params);
    if (value) newParams.set(key, value); else newParams.delete(key);
    setParams(newParams);
  };

  const totalPages = Math.ceil(total / 12);

  return (
    <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }}>
      <div className="bg-gray-100 py-4">
        <div className="container"><span className="text-gray-600">Home / Products</span></div>
      </div>
      <div className="container py-8">
        <div className="flex gap-8">
          <aside className="hidden lg:block w-64 flex-shrink-0">
            <div className="bg-white rounded-lg shadow-sm p-6 sticky top-24">
              <h3 className="font-semibold mb-4">Categories</h3>
              <ul className="space-y-2 mb-6">
                <li><button onClick={() => { setCategory(''); updateParam('category', ''); }} className={`${!category ? 'text-[#ee7203] font-medium' : 'text-gray-600 hover:text-[#ee7203]'}`}>All</button></li>
                {categories.map((c) => <li key={c.id}><button onClick={() => { setCategory(c.id); updateParam('category', c.id); }} className={`${category === c.id ? 'text-[#ee7203] font-medium' : 'text-gray-600 hover:text-[#ee7203]'}`}>{c.name}</button></li>)}
              </ul>
              <h3 className="font-semibold mb-4">Brands</h3>
              <ul className="space-y-2 mb-6">
                <li><button onClick={() => { setBrand(''); updateParam('brand', ''); }} className={`${!brand ? 'text-[#ee7203] font-medium' : 'text-gray-600 hover:text-[#ee7203]'}`}>All</button></li>
                {brands.map((b) => <li key={b.id}><button onClick={() => { setBrand(b.id); updateParam('brand', b.id); }} className={`${brand === b.id ? 'text-[#ee7203] font-medium' : 'text-gray-600 hover:text-[#ee7203]'}`}>{b.title}</button></li>)}
              </ul>
            </div>
          </aside>
          <main className="flex-1">
            <div className="bg-white rounded-lg shadow-sm p-4 mb-6 flex items-center justify-between">
              <button onClick={() => setFilterOpen(!filterOpen)} className="lg:hidden flex items-center gap-2 px-4 py-2 border rounded-lg"><FiFilter /> Filters</button>
              <span className="text-gray-500">{total} products</span>
              <select value={sortBy} onChange={(e) => { setSortBy(e.target.value); updateParam('sort', e.target.value); }} className="px-4 py-2 border rounded-lg">
                <option value="newest">Newest</option>
                <option value="price-asc">Price: Low to High</option>
                <option value="price-desc">Price: High to Low</option>
                <option value="name-asc">Name A-Z</option>
              </select>
            </div>
            {loading ? (
              <div className="grid grid-cols-2 md:grid-cols-3 gap-4">
                {[...Array(6)].map((_, i) => <div key={i} className="animate-pulse"><div className="bg-gray-200 aspect-square rounded-lg mb-3" /><div className="h-4 bg-gray-200 rounded w-3/4" /></div>)}
              </div>
            ) : products.length > 0 ? (
              <>
                <div className="grid grid-cols-2 md:grid-cols-3 gap-4 md:gap-6">
                  {products.map((p) => <ProductCard key={p.id} product={p} />)}
                </div>
                {totalPages > 1 && (
                  <div className="flex justify-center gap-2 mt-8">
                    <button disabled={page <= 1} onClick={() => { setPage(p => p - 1); updateParam('page', page - 1); }} className="px-4 py-2 border rounded-lg disabled:opacity-50">Prev</button>
                    <span className="px-4 py-2 text-gray-600">Page {page} of {totalPages}</span>
                    <button disabled={page >= totalPages} onClick={() => { setPage(p => p + 1); updateParam('page', page + 1); }} className="px-4 py-2 border rounded-lg disabled:opacity-50">Next</button>
                  </div>
                )}
              </>
            ) : (
              <div className="text-center py-12 text-gray-500">No products found</div>
            )}
          </main>
        </div>
      </div>
    </motion.div>
  );
};

export default Shop;
