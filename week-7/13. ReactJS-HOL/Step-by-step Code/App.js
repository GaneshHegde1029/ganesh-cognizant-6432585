import React, { useState } from 'react';
import BookDetails from './components/BookDetails';
import BlogDetails from './components/BlogDetails';
import CourseDetails from './components/CourseDetails';
import { books } from './data/books';

function App() {
  const [showBlog, setShowBlog] = useState(true);
  const [showCourse, setShowCourse] = useState(false);

  return (
    <div>
      <div className="st2">
        <h1>Book Details</h1>
        <BookDetails books={books} />
      </div>

      <button onClick={() => setShowBlog(!showBlog)}>
        Toggle Blog
      </button>
      <BlogDetails show={showBlog} />

      <button onClick={() => setShowCourse(!showCourse)}>
        Toggle Course
      </button>
      <CourseDetails showCourse={showCourse} />
    </div>
  );
}

export default App;
