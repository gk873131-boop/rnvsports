import { useState, useEffect } from 'react'
import { Link } from 'react-router-dom'
import { FiCalendar, FiUser, FiArrowRight } from 'react-icons/fi'
import SEO from '../components/common/SEO'
import LoadingSpinner from '../components/common/LoadingSpinner'
import { blogService } from '../services/services'
import { getImageUrl, formatDate } from '../utils'

const Blog = () => {
  const [blogs, setBlogs] = useState([])
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    blogService.getAll().then(res => setBlogs(res.data || [])).catch(() => setBlogs([])).finally(() => setLoading(false))
  }, [])

  if (loading) return <LoadingSpinner className="min-h-[60vh]" />

  return (
    <>
      <SEO title="Blog" description="Latest news and blog posts from RNV Sports" />
      <div className="bg-gray-100 py-4"><div className="container text-gray-600">Blog</div></div>

      <section className="py-12 bg-white">
        <div className="container">
          <h1 className="text-3xl font-bold mb-8 text-center">Latest from Our Blog</h1>
          {blogs.length === 0 ? (
            <div className="text-center py-16 text-gray-500"><p>No blog posts available.</p></div>
          ) : (
            <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
              {blogs.map(blog => (
                <article key={blog.blog_id} className="bg-white rounded-lg shadow-sm border overflow-hidden group">
                  <Link to={`/blog/${blog.slug}`}>
                    <div className="aspect-video bg-gray-100 overflow-hidden">
                      {blog.blog_image ? (
                        <img src={getImageUrl(blog.blog_image)} alt={blog.blog_name} className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300" />
                      ) : <div className="w-full h-full flex items-center justify-center text-gray-400">No Image</div>}
                    </div>
                  </Link>
                  <div className="p-5">
                    <div className="flex items-center gap-4 text-sm text-gray-500 mb-3">
                      {blog.author_name && <span className="flex items-center gap-1"><FiUser /> {blog.author_name}</span>}
                      <span className="flex items-center gap-1"><FiCalendar /> {formatDate(blog.blog_date)}</span>
                    </div>
                    <Link to={`/blog/${blog.slug}`}>
                      <h2 className="text-lg font-semibold mb-2 line-clamp-2 group-hover:text-[#ee7203]">{blog.blog_name}</h2>
                    </Link>
                    {blog.short_des && <p className="text-gray-600 text-sm line-clamp-3 mb-4">{blog.short_des}</p>}
                    <Link to={`/blog/${blog.slug}`} className="inline-flex items-center gap-1 text-[#ee7203] font-medium hover:gap-2 transition-all">Read More <FiArrowRight /></Link>
                  </div>
                </article>
              ))}
            </div>
          )}
        </div>
      </section>
    </>
  )
}

export default Blog
