import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { FiCalendar, FiUser } from 'react-icons/fi';
import SEO from '../components/common/SEO';
import { ProductCardSkeleton } from '../components/common/LoadingSpinner';
import { blogService } from '../services/services';
import { formatDate, getImageUrl, truncateText } from '../utils';

export default function Blog() {
  const [blogs,   setBlogs]   = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    blogService.getAll({ limit: 12 })
      .then(r => setBlogs(r.data || []))
      .catch(() => setBlogs([]))
      .finally(() => setLoading(false));
  }, []);

  return (
    <>
      <SEO title="Blog" description="Read the latest sports tips, product reviews and fitness advice from RNV Sports." />
      <div className="page-header">
        <div className="container">
          <h1>Blog</h1>
          <div className="breadcrumb" style={{ justifyContent: 'center' }}>
            <Link to="/">Home</Link><span className="breadcrumb-sep">/</span><span>Blog</span>
          </div>
        </div>
      </div>

      <div className="section-sm">
        <div className="container">
          {loading ? (
            <div className="grid-3">{Array.from({ length: 6 }).map((_, i) => <ProductCardSkeleton key={i} />)}</div>
          ) : blogs.length ? (
            <div className="grid-3">
              {blogs.map(blog => (
                <div key={blog.blog_id} className="card blog-card">
                  <div className="blog-card__image">
                    <img
                      src={getImageUrl(blog.blog_image)}
                      alt={blog.blog_name}
                      onError={e => { e.target.src = 'https://images.pexels.com/photos/3490363/pexels-photo-3490363.jpeg?auto=compress&w=600'; }}
                    />
                  </div>
                  <div className="blog-card__body">
                    <div className="blog-card__meta">
                      {blog.author_name && <span><FiUser size={11} style={{ display: 'inline', marginRight: 3 }} />{blog.author_name}</span>}
                      <span><FiCalendar size={11} style={{ display: 'inline', marginRight: 3 }} />{formatDate(blog.blog_date)}</span>
                    </div>
                    <h3 className="blog-card__title line-clamp-2">
                      <Link to={`/blog/${blog.slug}`}>{blog.blog_name}</Link>
                    </h3>
                    <p style={{ fontSize: 'var(--font-size-sm)', color: 'var(--color-neutral-500)', marginBottom: '1rem' }} className="line-clamp-3">
                      {truncateText(blog.short_des || '', 120)}
                    </p>
                    <Link to={`/blog/${blog.slug}`} style={{ fontSize: 'var(--font-size-sm)', fontWeight: 600, color: 'var(--color-primary)' }}>
                      Read More →
                    </Link>
                  </div>
                </div>
              ))}
            </div>
          ) : (
            <p style={{ textAlign: 'center', color: 'var(--color-neutral-400)', padding: '3rem' }}>No blog posts yet.</p>
          )}
        </div>
      </div>
    </>
  );
}
