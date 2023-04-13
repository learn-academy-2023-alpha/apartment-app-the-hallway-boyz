import React from 'react'
import { render, screen } from '@testing-library/react'
import { BrowserRouter } from "react-router-dom"
import Home from './Home';
import '@testing-library/jest-dom/extend-expect';

describe ("<Home />", () =>{
    it("renders without crashing", () => {
        render(
            <BrowserRouter>
                <Home />
            </BrowserRouter>
        )
        const welcome = screen.getByText('Welcome To Your New Apartment')
        expect(welcome).toBeInTheDocument()
    })
})