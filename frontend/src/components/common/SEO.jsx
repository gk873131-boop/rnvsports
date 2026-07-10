import { Helmet } from 'react-helmet-async';

const SITE_NAME = 'RNV Sports';

export default function SEO({ title, description, image, url, type = 'website' }) {
  const fullTitle = title ? `${title} | ${SITE_NAME}` : `${SITE_NAME} — Premium Sports & Gym Equipment`;
  const desc = description || 'Shop premium sports and gym equipment at RNV Sports. Find quality products for every athlete.';
  const ogImage = image || 'https://images.pexels.com/photos/3490363/pexels-photo-3490363.jpeg?auto=compress&w=1200';

  return (
    <Helmet>
      <title>{fullTitle}</title>
      <meta name="description" content={desc} />
      <meta property="og:type"        content={type} />
      <meta property="og:title"       content={fullTitle} />
      <meta property="og:description" content={desc} />
      <meta property="og:image"       content={ogImage} />
      {url && <meta property="og:url" content={url} />}
      <meta name="twitter:card"        content="summary_large_image" />
      <meta name="twitter:title"       content={fullTitle} />
      <meta name="twitter:description" content={desc} />
      <meta name="twitter:image"       content={ogImage} />
    </Helmet>
  );
}
