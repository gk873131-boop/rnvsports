import { useState } from 'react'
import { FiMapPin, FiPhone, FiMail, FiClock } from 'react-icons/fi'
import SEO from '../components/common/SEO'
import { enquiryService } from '../services/services'
import { validateEmail } from '../utils'

const Contact = () => {
  const [form, setForm] = useState({ name: '', email: '', subject: '', message: '' })
  const [loading, setLoading] = useState(false)
  const [msg, setMsg] = useState('')
  const [error, setError] = useState('')

  const handleSubmit = async (e) => {
    e.preventDefault()
    setError('')
    if (!validateEmail(form.email)) { setError('Please enter a valid email'); return }
    setLoading(true)
    try {
      await enquiryService.submitEnquiry(form)
      setMsg('Thank you! We will get back to you soon.')
      setForm({ name: '', email: '', subject: '', message: '' })
    } catch (err) {
      setError(err.message || 'Failed to send message')
    }
    setLoading(false)
    setTimeout(() => { setMsg(''); setError('') }, 5000)
  }

  return (
    <>
      <SEO title="Contact Us" description="Contact RNV Sports for any queries" />
      <div className="bg-gray-100 py-4"><div className="container text-gray-600">Contact Us</div></div>

      <section className="py-16 bg-white">
        <div className="container">
          <div className="max-w-4xl mx-auto">
            <h1 className="text-3xl font-bold text-center mb-8">Get in Touch</h1>
            <div className="grid md:grid-cols-2 gap-8">
              <div>
                <div className="bg-white rounded-lg shadow-sm p-6 mb-6">
                  <h2 className="text-xl font-semibold mb-6">Send us a Message</h2>
                  {msg && <div className="bg-green-50 text-green-700 p-3 rounded-lg mb-4">{msg}</div>}
                  {error && <div className="bg-red-50 text-red-700 p-3 rounded-lg mb-4">{error}</div>}
                  <form onSubmit={handleSubmit} className="space-y-4">
                    <div className="grid sm:grid-cols-2 gap-4">
                      <div>
                        <label className="block text-sm font-medium mb-1">Name *</label>
                        <input type="text" value={form.name} onChange={(e) => setForm({ ...form, name: e.target.value })} required className="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-[#ee7203]" />
                      </div>
                      <div>
                        <label className="block text-sm font-medium mb-1">Email *</label>
                        <input type="email" value={form.email} onChange={(e) => setForm({ ...form, email: e.target.value })} required className="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-[#ee7203]" />
                      </div>
                    </div>
                    <div>
                      <label className="block text-sm font-medium mb-1">Subject *</label>
                      <input type="text" value={form.subject} onChange={(e) => setForm({ ...form, subject: e.target.value })} required className="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-[#ee7203]" />
                    </div>
                    <div>
                      <label className="block text-sm font-medium mb-1">Message *</label>
                      <textarea value={form.message} onChange={(e) => setForm({ ...form, message: e.target.value })} required rows={4} className="w-full px-4 py-2 border rounded-lg focus:outline-none focus:border-[#ee7203]" />
                    </div>
                    <button type="submit" disabled={loading} className="w-full py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600 transition-colors disabled:opacity-50">{loading ? 'Sending...' : 'Send Message'}</button>
                  </form>
                </div>
              </div>
              <div className="space-y-4">
                {[
                  { icon: FiMapPin, title: 'Visit Us', lines: ['C 3/14, Basement Floor', 'Rana Pratap Bagh, Delhi-110007'] },
                  { icon: FiPhone, title: 'Call Us', lines: ['+91-9911820202'] },
                  { icon: FiMail, title: 'Email Us', lines: ['hiralalsurgicals@gmail.com'] },
                  { icon: FiClock, title: 'Hours', lines: ['Mon-Sat: 11:00 AM - 07:00 PM'] }
                ].map((c, i) => (
                  <div key={i} className="bg-gray-50 rounded-lg p-6 flex gap-4">
                    <div className="w-12 h-12 bg-gray-200 rounded-lg flex items-center justify-center flex-shrink-0">
                      <c.icon className="text-[#ee7203] w-6 h-6" />
                    </div>
                    <div>
                      <h3 className="font-semibold">{c.title}</h3>
                      {c.lines.map((l, j) => <p key={j} className="text-gray-600 text-sm">{l}</p>)}
                    </div>
                  </div>
                ))}
              </div>
            </div>
          </div>
        </div>
      </section>
    </>
  )
}

export default Contact
