import React from "react"
import "@testing-library/jest-dom"
import {render, screen} from "@testing-library/react"
import { BrowserRouter } from "react-router-dom"
import ProtectedIndex from "./ProtectedIndex"

describe("<ProtectedIndex />", () => {
  beforeEach(() => {
    const current_user ={
      email: "Worldwideapartments@gmail.com",
      password: "iamthegreatest123",
      id: 1
    }

    const userApartment = [
      {
        bedrooms: 5,
        bathrooms: 1.5,
        address: "123 fourth street",
        city: "Miami",
        state: "FL",
        square_footage: 600, 
        price: 300000, 
        utilities: "washer, dryer, gas and electric",
        pets: true, 
        image: "http://image.com"
      }
    ]
    render(
      <BrowserRouter>
        <ProtectedIndex apartments={userApartment} current_user={current_user}/>
      </BrowserRouter>
    )
  })
  it("renders without crashing", () => {})

  it("displays my listings", () => {
    const apartments = screen.getByText("My Apartments")
    expect(apartments).toBeInTheDocument()
  })
})