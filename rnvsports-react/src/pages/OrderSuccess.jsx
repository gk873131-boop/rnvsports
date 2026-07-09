import { motion } from 'framer-motion';
import { Link, useSearchParams } from 'react-router-dom';
import { FiCheck, FiPackage, FiHome } from 'react-icons/fi';
import { useEffect } from 'react';
import { useCart } from '../context/Context';

const OrderSuccess = () => {
  const [searchParams] = useSearchParams();
  const orderNo = searchParams.get('order') || '';
  const { removeAll } = useCart();

  useEffect(() => {
    removeAll();
  }, [removeAll]);

  return (
    <motion.div
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      className="min-h-[60vh] flex items-center justify-center py-16"
    >
      <div className="container max-w-lg mx-auto text-center">
        <motion.div
          initial={{ scale: 0 }}
          animate={{ scale: 1 }}
          transition={{ type: 'spring', stiffness: 200, damping: 20 }}
          className="w-24 h-24 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-6"
        >
          <FiCheck className="w-12 h-12 text-green-600" />
        </motion.div>

        <motion.h1
          initial={{ y: 20, opacity: 0 }}
          animate={{ y: 0, opacity: 1 }}
          transition={{ delay: 0.2 }}
          className="text-3xl font-bold text-gray-800 mb-4"
        >
          Order Placed Successfully!
        </motion.h1>

        <motion.p
          initial={{ y: 20, opacity: 0 }}
          animate={{ y: 0, opacity: 1 }}
          transition={{ delay: 0.3 }}
          className="text-gray-600 mb-6"
        >
          Thank you for your purchase. Your order has been confirmed and will be shipped soon.
        </motion.p>

        {orderNo && (
          <motion.div
            initial={{ y: 20, opacity: 0 }}
            animate={{ y: 0, opacity: 1 }}
            transition={{ delay: 0.4 }}
            className="bg-gray-100 rounded-lg p-4 mb-8"
          >
            <p className="text-sm text-gray-500 mb-1">Order Number</p>
            <p className="text-xl font-bold text-[#ee7203]">{orderNo}</p>
          </motion.div>
        )}

        <motion.div
          initial={{ y: 20, opacity: 0 }}
          animate={{ y: 0, opacity: 1 }}
          transition={{ delay: 0.5 }}
          className="flex flex-col sm:flex-row gap-4 justify-center"
        >
          <Link
            to="/dashboard"
            className="inline-flex items-center justify-center gap-2 px-6 py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600 transition-colors"
          >
            <FiPackage />
            View Orders
          </Link>
          <Link
            to="/"
            className="inline-flex items-center justify-center gap-2 px-6 py-3 bg-gray-200 text-gray-700 rounded-lg font-semibold hover:bg-gray-300 transition-colors"
          >
            <FiHome />
            Continue Shopping
          </Link>
        </motion.div>

        <motion.p
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ delay: 0.7 }}
          className="text-sm text-gray-500 mt-8"
        >
          A confirmation email has been sent to your registered email address.
        </motion.p>
      </div>
    </motion.div>
  );
};

export default OrderSuccess;
