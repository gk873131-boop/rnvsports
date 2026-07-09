import { motion } from 'framer-motion';
import { HeroSlider, ProductSection, CategorySection, BrandSection, FeaturesSection } from '../components/home/HomeSection';
import { productService } from '../services/api';

const Home = () => (
  <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }}>
    <HeroSlider />
    <FeaturesSection />
    <ProductSection title="Hot Selling" fetchFn={() => productService.getHotSelling(8)} />
    <CategorySection />
    <ProductSection title="Featured Products" fetchFn={() => productService.getFeatured(8)} />
    <ProductSection title="New Arrivals" fetchFn={() => productService.getNewArrivals(8)} />
    <BrandSection />
  </motion.div>
);

export default Home;
