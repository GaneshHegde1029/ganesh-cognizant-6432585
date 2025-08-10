import React from 'react';

const players = [
  { name: 'Rohit', score: 95 },
  { name: 'Virat', score: 68 },
  { name: 'Gill', score: 74 },
  { name: 'Surya', score: 42 },
  { name: 'Ishan', score: 33 },
  { name: 'Rahul', score: 89 },
  { name: 'Hardik', score: 56 },
  { name: 'Jadeja', score: 25 },
  { name: 'Shami', score: 15 },
  { name: 'Bumrah', score: 20 },
  { name: 'Kuldeep', score: 38 }
];

const ListofPlayers = () => {
  return (
    <ul>
      {players.map((player, index) => (
        <li key={index}>{player.name} - {player.score}</li>
      ))}
    </ul>
  );
};

export default ListofPlayers;
export { players };
