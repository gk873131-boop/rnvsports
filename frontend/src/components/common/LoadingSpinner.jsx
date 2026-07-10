import React from 'react';

export default function LoadingSpinner({ size = 'md', centered = false }) {
  const spinner = <div className={`spinner spinner-${size}`} />;
  if (!centered) return spinner;
  return (
    <div style={{ display: 'flex', justifyContent: 'center', alignItems: 'center', padding: '4rem' }}>
      {spinner}
    </div>
  );
}

export function ProductCardSkeleton() {
  return (
    <div className="card">
      <div className="skeleton" style={{ aspectRatio: '1/1' }} />
      <div style={{ padding: '0.875rem 1rem 1rem' }}>
        <div className="skeleton" style={{ height: 12, width: '40%', marginBottom: 8 }} />
        <div className="skeleton" style={{ height: 14, marginBottom: 6 }} />
        <div className="skeleton" style={{ height: 14, width: '70%', marginBottom: 10 }} />
        <div className="skeleton" style={{ height: 18, width: '50%' }} />
      </div>
    </div>
  );
}

export function PageLoader() {
  return (
    <div style={{ display: 'flex', justifyContent: 'center', alignItems: 'center', minHeight: '60vh' }}>
      <div style={{ textAlign: 'center' }}>
        <LoadingSpinner size="lg" />
        <p style={{ marginTop: '1rem', color: 'var(--color-neutral-400)', fontSize: '0.875rem' }}>Loading…</p>
      </div>
    </div>
  );
}
