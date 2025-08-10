import React from 'react';
import { players } from './ListofPlayers';

const Scorebelow70 = () => {
  const below70 = players.filter(player => player.score < 70);

  return (
    <ul>
      {below70.map((player, index) => (
        <li key={index}>{player.name} - {player.score}</li>
      ))}
    </ul>
  );
};

export default Scorebelow70;
