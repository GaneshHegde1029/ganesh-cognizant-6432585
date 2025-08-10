import React from 'react';
import ListofPlayers from './components/ListofPlayers';
import Scorebelow70 from './components/Scorebelow70';
import IndianPlayers from './components/IndianPlayers';

const App = () => {
  const flag = true;

  return (
    <div>
      {flag === true ? (
        <div>
          <h1>List of Players</h1>
          <ListofPlayers />
          <hr />
          <h1>List of Players having Scores Less than 70</h1>
          <Scorebelow70 />
        </div>
      ) : (
        <div>
          <IndianPlayers />
        </div>
      )}
    </div>
  );
};

export default App;
