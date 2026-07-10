import SEO from '../components/common/SEO'

const About = () => (
  <>
    <SEO title="About Us" description="About RNV Sports - Premium sports and gym equipment supplier" />
    <div className="bg-gray-100 py-4"><div className="container text-gray-600">About Us</div></div>
    <section className="py-16 bg-white">
      <div className="container">
        <div className="max-w-4xl mx-auto">
          <h1 className="text-3xl md:text-4xl font-bold text-center mb-8">About RNV Sports</h1>
          <div className="flex flex-col md:flex-row gap-8 items-center mb-12">
            <img src="https://images.unsplash.com/photo-1534438327276-142e2bae6874?w=600&h=400&fit=crop" alt="Gym" className="w-full md:w-1/2 rounded-lg shadow-lg" />
            <div className="md:w-1/2">
              <h2 className="text-2xl font-bold mb-4">Managed by Hiralal Surgicals</h2>
              <p className="text-gray-600 mb-4">RNV Sports is a premier sports and gym equipment business managed by Hiralal Surgicals, based in Delhi, India. Established in 2015, we have been serving fitness enthusiasts, gym owners, and sports professionals with high-quality equipment and accessories.</p>
              <p className="text-gray-600 mb-4">Our comprehensive range includes dumbbells, weight plates, barbells, benches, cardio equipment, gym accessories, sports goods, and much more. We take pride in offering products that combine quality, durability, and value for money.</p>
              <p className="text-gray-600">Located in the heart of Delhi, we cater to customers across India through our online platform and physical store.</p>
            </div>
          </div>
          <div className="grid md:grid-cols-2 gap-6">
            {[
              { title: 'Our Mission', desc: 'Provide premium quality sports and gym equipment at competitive prices.' },
              { title: 'Quality First', desc: 'We source only the best materials and maintain strict quality control.' },
              { title: 'Customer Focus', desc: 'Our dedicated team is committed to providing exceptional service.' },
              { title: 'Trusted Since 2015', desc: 'Over 8 years serving the fitness industry with excellence.' }
            ].map((f, i) => (
              <div key={i} className="bg-gray-50 p-6 rounded-lg">
                <h3 className="font-semibold text-lg mb-2">{f.title}</h3>
                <p className="text-gray-600">{f.desc}</p>
              </div>
            ))}
          </div>
        </div>
      </div>
    </section>
  </>
)

export default About
