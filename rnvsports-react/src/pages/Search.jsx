import { useState, useEffect } from 'react';
import { useSearchParams } from 'react-router-dom';
import { motion } from 'framer-motion';
import ProductCard from '../components/common/ProductCard';
import { productService } from '../services/api';

const Search = () => {
  const [params] = useSearchParams();
  const query = params.get('q') || '';
  const [products, setProducts] = useState([]);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    if (!query) return;
    setLoading(true);
    productService.getAll({ search: query, limit: 24 }).then((res) => setProducts(res.products)).catch(() => {}).finally(() => setLoading(false));
  }, [query]);

  return (
    <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }}>
      <div className="bg-gray-100 py-4"><div className="container text-gray-600">Search Results</div></div>
      <div className="container py-8">
        <h1 className="text-2xl font-bold mb-6">Search: "{query}"</h1>
        <p className="text-gray-600 mb-8">{loading ? 'Searching...' : `${products.length} results found`}</p>
        {loading ? <div className="grid grid-cols-2 md:grid-cols-4 gap-4">{[...Array(8)].map((_, i) => <div key={i} className="animate-pulse"><div className="bg-gray-200 aspect-square rounded-lg mb-3" /><div className="h-4 bg-gray-200 rounded w-3/4" /></div>)}</div> : products.length > 0 ? <div className="grid grid-cols-2 md:grid-cols-4 gap-4">{products.map((p) => <ProductCard key={p.id} product={p} />)}</div> : <div className="text-center py-12 text-gray-500">No products found</div>}
      </div>
    </motion.div>
  );
};

export default Search;
