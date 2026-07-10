import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import { FiCalendar, FiUser } from 'react-icons/fi';
import SEO from '../components/common/SEO';
import { PageLoader } from '../components/common/LoadingSpinner';
import { blogService } from '../services/services';
import { formatDate, getImageUrl } from '../utils';

export default function BlogDetails() {
  const { slug } = useParams();
  const [blog,    setBlog]    = useState(null);
  const [recent,  setRecent]  = useState([]);
  const [loading, setLoading] = useState(true);
  const [error,   setError]   = useState(null);

  useEffect(() => {
    setLoading(true);
    blogService.getBySlug(slug)
      .then(r => {
        setBlog(r.data);
        setRecent(r.data?.recentPosts || []);
      })
      .catch(e => setError(e.message || 'Blog post not found'))
      .finally(() => setLoading(false));
  }, [slug]);

  if (loading) return <PageLoader />;
  if (error)   return (
    <div className="section"><div className="container" style={{ textAlign: 'center' }}>
      <h2 style={{ marginBottom: '1rem' }}>Post Not Found</h2>
      <Link to="/blog" className="btn btn-primary">Back to Blog</Link>
    </div></div>
  );
  if (!blog) return null;

  return (
    <>
      <SEO
        title={blog.seo_title || blog.blog_name}
        description={blog.seo_description || blog.short_des}
        image={getImageUrl(blog.blog_image)}
        type="article"
      />

      <div className="page-header">
        <div className="container">
          <h1 style={{ fontSize: 'var(--font-size-2xl)' }}>{blog.blog_name}</h1>
          <div className="breadcrumb" style={{ justifyContent: 'center' }}>
            <Link to="/">Home</Link><span className="breadcrumb-sep">/</span>
            <Link to="/blog">Blog</Link><span className="breadcrumb-sep">/</span>
            <span>Article</span>
          </div>
        </div>
      </div>

      <div className="section-sm">
        <div className="container">
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 300px', gap: '2.5rem', alignItems: 'flex-start' }}>
            {/* Article */}
            <article>
              <div style={{ display: 'flex', gap: '1.5rem', marginBottom: '1.5rem', flexWrap: 'wrap' }}>
                {blog.author_name && (
                  <span style={{ display: 'flex', alignItems: 'center', gap: '.375rem', fontSize: 'var(--font-size-sm)', color: 'var(--color-neutral-500)' }}>
                    <FiUser size={14} /> {blog.author_name}
                  </span>
                )}
                {blog.blog_date && (
                  <span style={{ display: 'flex', alignItems: 'center', gap: '.375rem', fontSize: 'var(--font-size-sm)', color: 'var(--color-neutral-500)' }}>
                    <FiCalendar size={14} /> {formatDate(blog.blog_date)}
                  </span>
                )}
              </div>

              {blog.blog_image && (
                <img
                  src={getImageUrl(blog.blog_image)}
                  alt={blog.blog_name}
                  style={{ width: '100%', borderRadius: 'var(--radius-md)', marginBottom: '2rem', maxHeight: 420, objectFit: 'cover' }}
                  onError={e => { e.target.style.display = 'none'; }}
                />
              )}

              <div className="prose" dangerouslySetInnerHTML={{ __html: blog.blog_description || '<p>No content.</p>' }} />
            </article>

            {/* Sidebar */}
            {recent.length > 0 && (
              <aside>
                <div style={{ position: 'sticky', top: 80 }}>
                  <h3 style={{ fontWeight: 700, marginBottom: '1.25rem', fontSize: 'var(--font-size-base)' }}>Recent Posts</h3>
                  <div style={{ display: 'flex', flexDirection: 'column', gap: '1rem' }}>
                    {recent.filter(p => p.slug !== slug).slice(0, 4).map(p => (
                      <Link key={p.blog_id} to={`/blog/${p.slug}`} style={{ display: 'flex', gap: '.875rem', alignItems: 'flex-start' }}>
                        <img
                          src={getImageUrl(p.blog_image)}
                          alt={p.blog_name}
                          style={{ width: 64, height: 64, borderRadius: 'var(--radius)', objectFit: 'cover', flexShrink: 0 }}
                          onError={e => { e.target.src = 'https://images.pexels.com/photos/3490363/pexels-photo-3490363.jpeg?auto=compress&w=200'; }}
                        />
                        <div>
                          <p style={{ fontWeight: 600, fontSize: 'var(--font-size-sm)', lineHeight: 1.4, marginBottom: '.25rem' }} className="line-clamp-2">
                            {p.blog_name}
                          </p>
                          <p style={{ fontSize: 'var(--font-size-xs)', color: 'var(--color-neutral-400)' }}>{formatDate(p.blog_date)}</p>
                        </div>
                      </Link>
                    ))}
                  </div>
                </div>
              </aside>
            )}
          </div>
        </div>
      </div>

      <style>{`
        @media (max-width: 768px) {
          article + aside { display: none; }
          div[style*="grid-template-columns: 1fr 300px"] { grid-template-columns: 1fr !important; }
        }
      `}</style>
    </>
  );
}
