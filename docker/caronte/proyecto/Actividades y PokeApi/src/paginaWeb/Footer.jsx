import React from 'react'
import './footer.module.css'
import { FaFacebook } from "react-icons/fa";
import { FaTwitter } from "react-icons/fa";
import { FaInstagram } from "react-icons/fa";


function Footer({RRSS}) {
  return (
    <footer>
        <a href="https://www.facebook.com/p/IesCura-Valera-100064751317201"><FaFacebook />
        Facebook</a>
        <a href="https://x.com/iescuravalera?lang=ca"><FaTwitter />
        Twitter</a>
        <a href="https://www.instagram.com/explore/locations/115645025115521/ies-cura-valera/"><FaInstagram />
        Instagram</a>
        <a href="https://iescuravalera.es" > <img src="/logo.png" width="50" alt="logoIES"/> IES Cura Valera </a>
    </footer>
  )
}

export default Footer