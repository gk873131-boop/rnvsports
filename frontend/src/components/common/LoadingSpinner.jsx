const LoadingSpinner = ({ size = 'md', className = '' }) => {
  const sizes = { sm: 'w-6 h-6', md: 'w-12 h-12', lg: 'w-16 h-16' }
  return (
    <div className={`flex items-center justify-center ${className}`}>
      <div className={`animate-spin ${sizes[size]} border-4 border-[#ee7203] border-t-transparent rounded-full`}></div>
    </div>
  )
}

export default LoadingSpinner
