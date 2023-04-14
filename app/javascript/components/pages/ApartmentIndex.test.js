import React from 'react'
import '@testing-library/jest-dom/extend-expect';
import { render, screen } from '@testing-library/react'
import { BrowserRouter } from "react-router-dom"
import ApartmentIndex from './ApartmentIndex';

describe ("<ApartmentIndex />", () =>{
    it("renders without crashing", () => {
        render(
            <BrowserRouter>
                <ApartmentIndex />
            </BrowserRouter>
        )
        const listings = screen.getByRole('heading', {
            name: /apartment Listings/i
        })
        expect(listings).toBeInTheDocument()
    })
})