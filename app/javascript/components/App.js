import React, { useState, useEffect } from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Header from "./components/Header";
import Footer from "./components/Footer"
import ApartmentIndex from "./pages/ApartmentIndex";
import Home from "./pages/Home";

const App = (props) => {
  const [apartments, setApartments] = useState([])

  useEffect(() => {
    readApartments()
  }, [])

  const readApartments = () => {
    fetch("/apartments")
    .then((response) => response.json())
    .then((payload) => setApartments(payload))
    .catch((error) => console.log(error))
  }


  return (
    <>
      <BrowserRouter>
        <Header {...props}/>
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/apartmentindex" element={<ApartmentIndex apartments={apartments} />} />
          </Routes>
        <Footer />
      </BrowserRouter>
    </>
  );
};

export default App;
