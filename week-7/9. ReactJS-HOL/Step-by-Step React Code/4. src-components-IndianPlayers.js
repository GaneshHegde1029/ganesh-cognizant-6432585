import React from 'react';

const IndianPlayers = () => {
  const IndianTeam = ['Rohit', 'Gill', 'Kohli', 'Surya', 'Hardik', 'Jadeja'];

  const OddPlayers = (team) => {
    const [, ...rest] = team;
    const odd = rest.filter((_, index) => index % 2 === 0);
    return (
      <ul>
        {odd.map((player, index) => <li key={index}>{player}</li>)}
      </ul>
    );
  };

  const EvenPlayers = (team) => {
    const even = team.filter((_, index) => index % 2 === 0);
    return (
      <ul>
        {even.map((player, index) => <li key={index}>{player}</li>)}
      </ul>
    );
  };

  const T20Players = ['Ishan', 'Pant', 'Sanju'];
  const RanjiTrophyPlayers = ['Pujara', 'Rahane'];
  const IndianPlayers = [...T20Players, ...RanjiTrophyPlayers];

  return (
    <div>
      <div>
        <h1>Indian Team</h1>
        <h1>Odd Players</h1>
        {OddPlayers(IndianTeam)}
        <hr />
        <h1>Even Players</h1>
        {EvenPlayers(IndianTeam)}
      </div>
      <hr />
      <div>
        <h1>List of Indian Players Merged:</h1>
        <ul>
          {IndianPlayers.map((player, index) => (
            <li key={index}>{player}</li>
          ))}
        </ul>
      </div>
    </div>
  );
};

export default IndianPlayers;
