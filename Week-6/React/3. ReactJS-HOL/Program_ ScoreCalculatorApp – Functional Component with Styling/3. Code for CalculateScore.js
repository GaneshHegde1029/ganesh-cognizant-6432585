import React from 'react';
import '../Stylesheets/mystyle.css';

function CalculateScore(props) {
  const average = props.Total / props.Goal;

  return (
    <div className="score-container">
      <h2>Student Score Summary</h2>
      <p><strong>Name:</strong> {props.Name}</p>
      <p><strong>School:</strong> {props.School}</p>
      <p><strong>Total Marks:</strong> {props.Total}</p>
      <p><strong>Subjects:</strong> {props.Goal}</p>
      <p><strong>Average Score:</strong> {average}</p>
    </div>
  );
}

export default CalculateScore;
