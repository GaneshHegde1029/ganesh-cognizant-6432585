import React from 'react';

function CourseDetails({ showCourse }) {
  return (
    <>
      {showCourse && ( // Conditional rendering using '&&'
        <div className="mystyle1">
          <h1>Course Details</h1>
          <p>Full Stack Developer Program using MERN Stack.</p>
        </div>
      )}
    </>
  );
}

export default CourseDetails;
