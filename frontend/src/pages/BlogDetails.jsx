import { useState, useEffect } from 'react'
import { useParams, Link } from 'react-router-dom'
import { FiCalendar, FiUser, FiArrowLeft, FiFacebook, FiTwitter, FiLinkedin } from 'react-icons/fi'
import SEO from '../components/common/SEO'
import LoadingSpinner from '../components/common/LoadingSpinner'
import { blogService } from '../services/services'
import { getImageUrl, formatDate } from '../utils'

const BlogDetails = () => {
  const { slug } = useParams()
  const [blog, setBlog] = useState(null)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    if (!slug) return
    blogService.getBySlug(slug)
      .then(res => setBlog(res.data))
      .catch(() => setBlog(null))
      .finally(() => setLoading(false))
  }, [slug])

  if (loading) return <LoadingSpinner className="min-h-[60vh]" />

  if (!blog) {
    return (
      <>
        <SEO title="Blog Post Not Found" />
        <div className="py-16 text-center">
          <h1 className="text-2xl font-bold mb-4">Blog Post Not Found</h1>
          <Link to="/blog" className="text-[#ee7203]">Back to Blog</Link>
        </div>
      </>
    )
  }

  return (
    <>
      <SEO title={blog.blog_name} description={blog.short_des} image={getImageUrl(blog.blog_image)} />
      <div className="bg-gray-100 py-4">
        <div className="container">
          <Link to="/blog" className="inline-flex items-center gap-2 text-gray-600 hover:text-[#ee7203]"><FiArrowLeft /> Back to Blog</Link>
        </div>
      </div>

      <article className="py-12 bg-white">
        <div className="container max-w-4xl">
          <div className="mb-8">
            <div className="flex items-center gap-4 text-sm text-gray-500 mb-4">
              {blog.author_name && <span className="flex items-center gap-1"><FiUser /> {blog.author_name}</span>}
              <span className="flex items-center gap-1"><FiCalendar /> {formatDate(blog.blog_date)}</span>
            </div>
            <h1 className="text-3xl md:text-4xl font-bold mb-4">{blog.blog_name}</h1>
            {blog.short_des && <p className="text-xl text-gray-600">{blog.short_des}</p>}
          </div>

          {blog.blog_image && (
            <div className="aspect-video rounded-lg overflow-hidden mb-8">
              <img src={getImageUrl(blog.blog_image)} alt={blog.blog_name} className="w-full h-full object-cover" />
            </div>
          )}

          <div className="prose max-w-none mb-8" dangerouslySetInnerHTML={{ __html: blog.blog_description || '' }} />

          <div className="border-t pt-6">
            <h3 className="font-semibold mb-4">Share this article</h3>
            <div className="flex gap-3">
              <a href={`https://www.facebook.com/sharer/sharer.php?u=${encodeURIComponent(window.location.href)}`} target="_blank" rel="noopener noreferrer" className="p-3 bg-gray-100 rounded-lg hover:bg-[#ee7203] hover:text-white transition-colors"><FiFacebook /></a>
              <a href={`https://twitter.com/intent/tweet?url=${encodeURIComponent(window.location.href)}&text=${encodeURIComponent(blog.blog_name)}`} target="_blank" rel="noopener noreferrer" className="p-3 bg-gray-100 rounded-lg hover:bg-[#ee7203] hover:text-white transition-colors"><FiTwitter /></a>
              <a href={`https://www.linkedin.com/shareArticle?mini=true&url=${encodeURIComponent(window.location.href)}&title=${encodeURIComponent(blog.blog_name)}`} target="_blank" rel="noopener noreferrer" className="p-3 bg-gray-100 rounded-lg hover:bg-[#ee7203] hover:text-white transition-colors"><FiLinkedin /></a>
            </div>
          </div>
        </div>
      </article>
    </>
  )
}

export default BlogDetails
