import React from 'react'
import { IoIosContact } from "react-icons/io";
import { Link } from 'react-router-dom';
import { FaHome } from "react-icons/fa";

function Nav() {
  const navStyle = {
    display: 'flex',
    justifyContent: 'center',
    gap: '20px',
    padding: '15px',
    backgroundColor: 'white',
    boxShadow: '0 2px 4px rgba(0,0,0,0.1)',
    marginBottom: '20px',
    flexWrap: 'wrap'
  };

  const linkStyle = {
    display: 'flex',
    alignItems: 'center',
    gap: '5px',
    color: '#333',
    fontWeight: '500',
    textTransform: 'uppercase',
    fontSize: '0.9rem',
    textDecoration: 'none'
  };

  return (
    <nav style={navStyle}>
        <Link style={linkStyle} to="/"><FaHome />Inicio</Link> 
        <Link style={linkStyle} to="/noticias"> GEN 1</Link> 
        <Link style={linkStyle} to="/noticias1"> GEN 2</Link> 
        <Link style={linkStyle} to="/noticias2"> GEN 3</Link> 
        <Link style={linkStyle} to="/about/domingo"><IoIosContact />Domingo</Link> 
        <Link style={linkStyle} to="/about/morgado"><IoIosContact />Morgado</Link> 
        <Link style={linkStyle} to="/noticias3"> DIGIMON</Link> 
    </nav>
  )
}

export default Nav