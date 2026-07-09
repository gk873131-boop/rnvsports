import { useState, useEffect } from 'react';
import { motion } from 'framer-motion';
import { Link } from 'react-router-dom';
import { FiCalendar, FiUser, FiArrowRight } from 'react-icons/fi';
import supabase from '../services/supabase';

const Blog = () => {
  const [blogs, setBlogs] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchBlogs = async () => {
      try {
        const { data, error } = await supabase
          .from('blogs')
          .select('*')
          .eq('status', 'published')
          .order('created_at', { ascending: false });

        if (error) throw error;
        setBlogs(data || []);
      } catch (err) {
        console.error('Error fetching blogs:', err);
        setBlogs([]);
      } finally {
        setLoading(false);
      }
    };

    fetchBlogs();
  }, []);

  if (loading) {
    return (
      <div className="min-h-[60vh] flex items-center justify-center">
        <div className="animate-spin w-12 h-12 border-4 border-[#ee7203] border-t-transparent rounded-full" />
      </div>
    );
  }

  return (
    <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }}>
      <div className="bg-gray-100 py-4">
        <div className="container text-gray-600">Blog</div>
      </div>

      <section className="py-12 bg-white">
        <div className="container">
          <h1 className="text-3xl font-bold mb-8 text-center">Latest from Our Blog</h1>

          {blogs.length === 0 ? (
            <div className="text-center py-16 text-gray-500">
              <p>No blog posts available.</p>
            </div>
          ) : (
            <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
              {blogs.map((blog, index) => (
                <motion.article
                  key={blog.id}
                  initial={{ opacity: 0, y: 30 }}
                  animate={{ opacity: 1, y: 0 }}
                  transition={{ delay: index * 0.1 }}
                  className="bg-white rounded-lg shadow-sm border overflow-hidden group"
                >
                  <Link to={`/blog/${blog.slug}`} className="block">
                    <div className="aspect-video bg-gray-100 overflow-hidden">
                      {blog.image ? (
                        <img
                          src={blog.image}
                          alt={blog.title}
                          className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
                        />
                      ) : (
                        <div className="w-full h-full flex items-center justify-center text-gray-400">
                          No Image
                        </div>
                      )}
                    </div>
                  </Link>
                  <div className="p-5">
                    <div className="flex items-center gap-4 text-sm text-gray-500 mb-3">
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
                          month: 'short',
                          year: 'numeric',
                        })}
                      </span>
                    </div>
                    <Link to={`/blog/${blog.slug}`}>
                      <h2 className="text-lg font-semibold mb-2 line-clamp-2 group-hover:text-[#ee7203] transition-colors">
                        {blog.title}
                      </h2>
                    </Link>
                    {blog.excerpt && (
                      <p className="text-gray-600 text-sm line-clamp-3 mb-4">{blog.excerpt}</p>
                    )}
                    <Link
                      to={`/blog/${blog.slug}`}
                      className="inline-flex items-center gap-1 text-[#ee7203] font-medium hover:gap-2 transition-all"
                    >
                      Read More <FiArrowRight />
                    </Link>
                  </div>
                </motion.article>
              ))}
            </div>
          )}
        </div>
      </section>
    </motion.div>
  );
};

export default Blog;
