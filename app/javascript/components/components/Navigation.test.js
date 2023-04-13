import React from 'react'
import { render, screen } from '@testing-library/react'
import { BrowserRouter } from "react-router-dom"
import Navigation from './Navigation'
import '@testing-library/jest-dom/extend-expect';

describe ("<Navigation />", () =>{
    it("renders without crashing", () => {
        render(
            <BrowserRouter>
                <Navigation />
            </BrowserRouter>
        )
    })
    it("has clickable links for a registered user", () => {
        render(
            <BrowserRouter>
                <Navigation logged_in={true}/>
            </BrowserRouter>
        )
        const myListings = screen.getByRole("link", {
            name: /view apartment listings/i
          })
        expect(myListings).toBeInTheDocument()
    })

    it("has clickable links for an unregistered user", () => {
        render(
            <BrowserRouter>
                <Navigation logged_in={false}/>
            </BrowserRouter>
        )
        const listings = screen.getByText(/sign in/i)
        expect(listings).toBeInTheDocument()
    })
})