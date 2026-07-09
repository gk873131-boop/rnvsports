import { motion } from 'framer-motion';

const Terms = () => (
  <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }}>
    <div className="bg-gray-100 py-4"><div className="container text-gray-600">Terms & Conditions</div></div>
    <section className="py-12 bg-white">
      <div className="container">
        <div className="max-w-4xl mx-auto prose">
          <h1 className="text-3xl font-bold mb-8">Terms & Conditions</h1>
          <p className="text-gray-500 mb-6">Last updated: January 2024</p>
          <h2>1. Acceptance of Terms</h2>
          <p>By accessing and using this website, you accept and agree to be bound by the Terms and conditions and our Privacy Policy.</p>
          <h2>2. Use of Website</h2>
          <p>You agree to use this website only for lawful purposes and in a way that does not infringe upon the rights of others.</p>
          <h2>3. Products and Pricing</h2>
          <p>All product descriptions, images, and specifications are provided for informational purposes only. Prices are subject to change without notice.</p>
          <h2>4. Orders and Payments</h2>
          <p>When you place an order, you are making an offer to purchase products. We reserve the right to refuse any order.</p>
          <h2>5. Shipping and Delivery</h2>
          <p>We ship products across India. Estimated delivery times are provided for guidance only.</p>
          <h2>6. Returns and Refunds</h2>
          <p>Please refer to our Return and Exchange Policy for detailed information.</p>
          <h2>7. Governing Law</h2>
          <p>These terms shall be governed by the laws of India. Any disputes shall be subject to the jurisdiction of courts in Delhi.</p>
        </div>
      </div>
    </section>
  </motion.div>
);

export default Terms;
