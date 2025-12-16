import React, { useState, useEffect } from 'react';
import Button from 'react-bootstrap/Button';
import Card from 'react-bootstrap/Card';

function Tarjeta4() {
  const [digimon, setDigimon] = useState(null);

  const fetchRandomDigimon = async () => {
    try {
      const response = await fetch('https://digimon-api.vercel.app/api/digimon');
      const data = await response.json();
      const randomIndex = Math.floor(Math.random() * data.length);
      const selectedDigimon = data[randomIndex];
      setDigimon({
        name: selectedDigimon.name,
        image: selectedDigimon.img,
        level: selectedDigimon.level,
      });
    } catch (error) {
      console.error("Error fetching Digimon:", error);
    }
  };

  useEffect(() => {
    fetchRandomDigimon();
  }, []);

  if (!digimon) {
    return <p>Loading...</p>;
  }

  return (
    <Card style={{ width: '10rem', fontSize: '0.5rem', padding: '0.5rem', backgroundColor: 'yellow', border: 'solid orange 5px' }}>
      <Card.Img
        variant="top"
        src={digimon.image}
        alt={digimon.name}
        style={{ height: '8rem', objectFit: 'contain', border: 'solid orange 5px' }}
      />
      <Card.Body>
        <Card.Title style={{ fontSize: '1rem' }}>{digimon.name.toUpperCase()}</Card.Title>
        <Card.Text>
          <strong>Level:</strong> {digimon.level}
        </Card.Text>
        <Button
          variant="primary"
          size="sm"
          onClick={fetchRandomDigimon}
          style={{ padding: '0.25rem 0.5rem', fontSize: '0.8rem' }}
        >
          Otro Digimon
        </Button>
      </Card.Body>
    </Card>
  );
}

export default Tarjeta4;
