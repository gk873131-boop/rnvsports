import SEO from '../components/common/SEO'
import { HeroSlider, ProductSection } from '../components/home/HeroSlider'
import { CategorySection, BrandSection, FeaturesSection } from '../components/home/Sections'
import { productService } from '../services/services'

const Home = () => (
  <>
    <SEO title="Home" description="RNV Sports - Premium Sports & Gym Equipment Supplier in India" />
    <HeroSlider />
    <FeaturesSection />
    <ProductSection title="Hot Selling" fetchFn={() => productService.getHotSelling()} />
    <CategorySection />
    <ProductSection title="Featured Products" fetchFn={() => productService.getFeatured()} />
    <ProductSection title="New Arrivals" fetchFn={() => productService.getNewArrivals()} />
    <BrandSection />
  </>
)

export default Home
