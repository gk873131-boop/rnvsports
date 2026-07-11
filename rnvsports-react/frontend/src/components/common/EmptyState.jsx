import React from 'react';
import { Link } from 'react-router-dom';
import { FiShoppingBag } from 'react-icons/fi';

export default function EmptyState({ icon: Icon = FiShoppingBag, title = 'Nothing here', description = '', actionLabel, actionTo, onAction }) {
  return (
    <div className="empty-state">
      <div className="empty-icon"><Icon /></div>
      <h3 className="empty-title">{title}</h3>
      {description && <p className="empty-desc">{description}</p>}
      {actionLabel && (
        actionTo
          ? <Link to={actionTo} className="btn btn-primary">{actionLabel}</Link>
          : <button className="btn btn-primary" onClick={onAction}>{actionLabel}</button>
      )}
    </div>
  );
}
