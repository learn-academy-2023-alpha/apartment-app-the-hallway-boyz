import React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Header from "./components/Header";
import Footer from "./components/Footer"
import ApartmentIndex from "./pages/ApartmentIndex";
import Home from "./pages/Home";

const App = (props) => {
  return (
    <>
      <BrowserRouter>
        <Header {...props}/>
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/apartmentindex" element={<ApartmentIndex />} />
          </Routes>
        <Footer />
      </BrowserRouter>
    </>
  );
};

export default App;
