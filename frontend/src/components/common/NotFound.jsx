import React from 'react';
import { Link } from 'react-router-dom';

export default function NotFound() {
  return (
    <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', minHeight: '60vh', padding: '2rem', textAlign: 'center' }}>
      <div style={{ fontSize: '7rem', fontWeight: 800, color: 'var(--color-primary)', lineHeight: 1 }}>404</div>
      <h2 style={{ fontSize: 'var(--font-size-2xl)', fontWeight: 700, margin: '1rem 0 .5rem', color: 'var(--color-neutral-800)' }}>
        Page Not Found
      </h2>
      <p style={{ color: 'var(--color-neutral-500)', marginBottom: '2rem', maxWidth: 400 }}>
        The page you're looking for doesn't exist or has been moved.
      </p>
      <Link to="/" className="btn btn-primary btn-lg">Go Home</Link>
    </div>
  );
}
