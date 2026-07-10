import { Helmet } from 'react-helmet-async'

const SEO = ({ title, description, image, url }) => {
  const fullTitle = title ? `${title} | RNV Sports` : 'RNV Sports - Premium Sports & Gym Equipment'
  const desc = description || 'Premium sports and gym equipment supplier in India. Quality fitness equipment at competitive prices.'
  return (
    <Helmet>
      <title>{fullTitle}</title>
      <meta name="description" content={desc} />
      <meta property="og:title" content={fullTitle} />
      <meta property="og:description" content={desc} />
      {image && <meta property="og:image" content={image} />}
      {url && <meta property="og:url" content={url} />}
      <meta name="twitter:card" content="summary_large_image" />
      <meta name="twitter:title" content={fullTitle} />
      <meta name="twitter:description" content={desc} />
    </Helmet>
  )
}

export default SEO
