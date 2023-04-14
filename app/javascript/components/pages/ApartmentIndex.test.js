import React from "react"
import "@testing-library/jest-dom"
import {render, screen} from "@testing-library/react"
import { BrowserRouter } from "react-router-dom"
import ApartmentIndex from "./ApartmentIndex"

describe("<ApartmentIndex />", () => {
    const apartments = [
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
        image: "https://images.unsplash.com/photo-1561518663-f32e0091b049?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bWlhbWklMjBhcGFydG1lbnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"
      }
    ]
    render(
      <BrowserRouter>
        <ApartmentIndex apartments={apartments} />
      </BrowserRouter>
    )

  it("displays my listings", () => {
    const apartments = screen.getByText("Apartment Listings", {
        name: /Apartment Listings/i
    })
    expect(apartments).toBeInTheDocument()
  })
})