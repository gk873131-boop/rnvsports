import { useState, useEffect } from 'react';
import { motion } from 'framer-motion';
import { useParams, Link } from 'react-router-dom';
import { FiCalendar, FiUser, FiArrowLeft, FiFacebook, FiTwitter, FiLinkedin } from 'react-icons/fi';
import supabase from '../services/supabase';

const BlogDetails = () => {
  const { slug } = useParams();
  const [blog, setBlog] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchBlog = async () => {
      try {
        setLoading(true);
        const { data, error } = await supabase
          .from('blogs')
          .select('*')
          .eq('slug', slug)
          .eq('status', 'published')
          .single();

        if (error) throw error;
        setBlog(data);
      } catch (err) {
        console.error('Error fetching blog:', err);
        setBlog(null);
      } finally {
        setLoading(false);
      }
    };

    if (slug) fetchBlog();
  }, [slug]);

  if (loading) {
    return (
      <div className="min-h-[60vh] flex items-center justify-center">
        <div className="animate-spin w-12 h-12 border-4 border-[#ee7203] border-t-transparent rounded-full" />
      </div>
    );
  }

  if (!blog) {
    return (
      <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} className="py-16 text-center">
        <h1 className="text-2xl font-bold mb-4">Blog Post Not Found</h1>
        <Link to="/blog" className="text-[#ee7203] hover:underline">
          Back to Blog
        </Link>
      </motion.div>
    );
  }

  return (
    <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }}>
      <div className="bg-gray-100 py-4">
        <div className="container">
          <Link to="/blog" className="inline-flex items-center gap-2 text-gray-600 hover:text-[#ee7203]">
            <FiArrowLeft /> Back to Blog
          </Link>
        </div>
      </div>

      <article className="py-12 bg-white">
        <div className="container max-w-4xl">
          <motion.header initial={{ y: 20, opacity: 0 }} animate={{ y: 0, opacity: 1 }} className="mb-8">
            <div className="flex items-center gap-4 text-sm text-gray-500 mb-4">
              {blog.author && (
                <span className="flex items-center gap-1">
                  <FiUser />
                  {blog.author}
                </span>
              )}
              <span className="flex items-center gap-1">
                <FiCalendar />
                {new Date(blog.created_at).toLocaleDateString('en-IN', {
                  day: 'numeric',
                  month: 'long',
                  year: 'numeric',
                })}
              </span>
            </div>
            <h1 className="text-3xl md:text-4xl font-bold mb-4">{blog.title}</h1>
            {blog.excerpt && <p className="text-xl text-gray-600">{blog.excerpt}</p>}
          </motion.header>

          {blog.image && (
            <motion.div
              initial={{ scale: 0.95, opacity: 0 }}
              animate={{ scale: 1, opacity: 1 }}
              transition={{ delay: 0.2 }}
              className="aspect-video rounded-lg overflow-hidden mb-8"
            >
              <img src={blog.image} alt={blog.title} className="w-full h-full object-cover" />
            </motion.div>
          )}

          <motion.div
            initial={{ y: 20, opacity: 0 }}
            animate={{ y: 0, opacity: 1 }}
            transition={{ delay: 0.3 }}
            className="prose max-w-none mb-8"
            dangerouslySetInnerHTML={{ __html: blog.content || '' }}
          />

          <motion.div
            initial={{ y: 20, opacity: 0 }}
            animate={{ y: 0, opacity: 1 }}
            transition={{ delay: 0.4 }}
            className="border-t pt-6"
          >
            <h3 className="font-semibold mb-4">Share this article</h3>
            <div className="flex gap-3">
              <a
                href={`https://www.facebook.com/sharer/sharer.php?u=${encodeURIComponent(window.location.href)}`}
                target="_blank"
                rel="noopener noreferrer"
                className="p-3 bg-gray-100 rounded-lg hover:bg-[#ee7203] hover:text-white transition-colors"
              >
                <FiFacebook />
              </a>
              <a
                href={`https://twitter.com/intent/tweet?url=${encodeURIComponent(window.location.href)}&text=${encodeURIComponent(blog.title)}`}
                target="_blank"
                rel="noopener noreferrer"
                className="p-3 bg-gray-100 rounded-lg hover:bg-[#ee7203] hover:text-white transition-colors"
              >
                <FiTwitter />
              </a>
              <a
                href={`https://www.linkedin.com/shareArticle?mini=true&url=${encodeURIComponent(window.location.href)}&title=${encodeURIComponent(blog.title)}`}
                target="_blank"
                rel="noopener noreferrer"
                className="p-3 bg-gray-100 rounded-lg hover:bg-[#ee7203] hover:text-white transition-colors"
              >
                <FiLinkedin />
              </a>
            </div>
          </motion.div>
        </div>
      </article>
    </motion.div>
  );
};

export default BlogDetails;
