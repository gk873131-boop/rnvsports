import { motion } from 'framer-motion';
import { FiRefreshCw, FiPackage, FiTruck, FiCreditCard } from 'react-icons/fi';

const ReturnExchange = () => {
  const steps = [
    { icon: FiPackage, title: 'Request Return', desc: 'Contact us within 15 days of delivery' },
    { icon: FiTruck, title: 'Ship the Product', desc: 'Pack in original packaging' },
    { icon: FiCreditCard, title: 'Refund or Exchange', desc: 'Processed after inspection' }
  ];

  return (
    <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }}>
      <div className="bg-gray-100 py-4"><div className="container text-gray-600">Return & Exchange</div></div>
      <section className="py-12 bg-white">
        <div className="container">
          <div className="max-w-4xl mx-auto text-center">
            <div className="w-16 h-16 bg-gray-100 rounded-full flex items-center justify-center mx-auto mb-6"><FiRefreshCw className="w-8 h-8 text-[#ee7203]" /></div>
            <h1 className="text-3xl font-bold mb-4">Return & Exchange Policy</h1>
            <p className="text-gray-600 mb-8 max-w-2xl mx-auto">We want you to be completely satisfied. If you're not happy with a product, you can return or exchange it within 15 days of delivery.</p>
          </div>
          <div className="grid md:grid-cols-3 gap-6 mb-12">
            {steps.map((s, i) => (
              <div key={i} className="bg-gray-50 rounded-lg p-6 text-center">
                <div className="w-14 h-14 bg-gray-200 rounded-full flex items-center justify-center mx-auto mb-4"><s.icon className="w-7 h-7 text-[#ee7203]" /></div>
                <h3 className="font-semibold mb-2">{s.title}</h3>
                <p className="text-gray-600 text-sm">{s.desc}</p>
              </div>
            ))}
          </div>
          <div className="grid md:grid-cols-2 gap-6 max-w-4xl mx-auto">
            <div className="bg-green-50 rounded-lg p-6">
              <h3 className="font-semibold text-green-800 mb-4">Conditions for Return</h3>
              <ul className="space-y-2 text-green-700 text-sm">
                <li>+ Product must be in original condition with all tags</li>
                <li>+ Product should be unused and in original packaging</li>
                <li>+ Return request within 15 days of delivery</li>
                <li>+ Valid proof of purchase required</li>
              </ul>
            </div>
            <div className="bg-red-50 rounded-lg p-6">
              <h3 className="font-semibold text-red-800 mb-4">Non-Returnable Items</h3>
              <ul className="space-y-2 text-red-700 text-sm">
                <li>x Products that have been used or installed</li>
                <li>x Products without original packaging</li>
                <li>x Customized or personalized items</li>
                <li>x Products damaged due to misuse</li>
              </ul>
            </div>
          </div>
        </div>
      </section>
    </motion.div>
  );
};

export default ReturnExchange;
