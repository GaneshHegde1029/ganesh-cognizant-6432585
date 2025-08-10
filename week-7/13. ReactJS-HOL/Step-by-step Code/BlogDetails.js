import React from 'react';

function BlogDetails({ show }) {
  if (!show) return null; // Conditional rendering using 'if'
  
  return (
    <div className="v1">
      <h1>Blog Details</h1>
      <p>React is a popular front-end library maintained by Meta.</p>
    </div>
  );
}

export default BlogDetails;
