import React, { useCallback } from 'react';
import SEO from '../components/common/SEO';
import { HeroSlider, ProductSection } from '../components/home/HeroSlider';
import { FeaturesSection, CategorySection, BrandSection, PromoSection } from '../components/home/Sections';
import { productService } from '../services/services';

export default function Home() {
  const fetchHot      = useCallback(() => productService.getHotSelling(8),  []);
  const fetchFeatured = useCallback(() => productService.getFeatured(8),     []);
  const fetchNew      = useCallback(() => productService.getNewArrivals(8),  []);

  return (
    <>
      <SEO
        title="Home"
        description="RNV Sports — Premium sports and gym equipment. Shop ankle supports, knee braces, gym gear and more."
      />
      <HeroSlider />
      <FeaturesSection />
      <ProductSection title="Hot Selling"  fetchFn={fetchHot}      viewAllLink="/shop?sort=price_asc" />
      <CategorySection />
      <ProductSection title="Featured Products" fetchFn={fetchFeatured} viewAllLink="/shop" />
      <PromoSection />
      <ProductSection title="New Arrivals" fetchFn={fetchNew}      viewAllLink="/shop?sort=newest" />
      <BrandSection />
    </>
  );
}
