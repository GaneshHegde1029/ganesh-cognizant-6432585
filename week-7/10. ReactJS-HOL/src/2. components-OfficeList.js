import React from 'react';
import './OfficeList.css';

const OfficeList = () => {
  const officeSpaces = [
    { Name: "DBS", Rent: 50000, Address: "Chennai", Image: "https://via.placeholder.com/150" },
    { Name: "Regus", Rent: 70000, Address: "Bangalore", Image: "https://via.placeholder.com/150" },
    { Name: "SmartWorks", Rent: 60000, Address: "Mumbai", Image: "https://via.placeholder.com/150" },
    { Name: "WeWork", Rent: 80000, Address: "Hyderabad", Image: "https://via.placeholder.com/150" }
  ];

  return (
    <div>
      {officeSpaces.map((item, index) => {
        const textColor = item.Rent <= 60000 ? 'textRed' : 'textGreen';

        return (
          <div key={index} className="office-card">
            <img src={item.Image} alt="Office Space" width="25%" height="25%" />
            <h2>Name: {item.Name}</h2>
            <h3 className={textColor}>Rent: ₹{item.Rent}</h3>
            <h3>Address: {item.Address}</h3>
          </div>
        );
      })}
    </div>
  );
};

export default OfficeList;
