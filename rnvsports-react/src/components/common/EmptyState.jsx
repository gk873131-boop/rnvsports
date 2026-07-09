import { motion } from 'framer-motion';
import { FiShoppingBag } from 'react-icons/fi';

const EmptyState = ({ icon: Icon = FiShoppingBag, title = 'No items', description = '', action, actionLabel }) => (
  <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} className="text-center py-16">
    <div className="w-20 h-20 bg-gray-100 rounded-full flex items-center justify-center mx-auto mb-6"><Icon className="w-10 h-10 text-gray-400" /></div>
    <h3 className="text-xl font-semibold text-gray-800 mb-2">{title}</h3>
    {description && <p className="text-gray-500 mb-6">{description}</p>}
    {action && <motion.button whileHover={{ scale: 1.05 }} whileTap={{ scale: 0.95 }} onClick={action} className="px-6 py-3 bg-[#ee7203] text-white rounded-lg font-semibold hover:bg-orange-600">{actionLabel || 'Action'}</motion.button>}
  </motion.div>
);

export default EmptyState;
