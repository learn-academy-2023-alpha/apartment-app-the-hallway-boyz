import React from 'react'
import { render, screen } from '@testing-library/react'
import { BrowserRouter } from "react-router-dom"
import Footer from './Footer'
//This import fixes testing issue
import '@testing-library/jest-dom/extend-expect';

describe ("<Footer />", () =>{
    it("renders a footer", () => {
        render(
            <BrowserRouter>
                <Footer />
            </BrowserRouter>
        )
        const footer = screen.getByRole('contentinfo')
        expect(footer).toBeInTheDocument()
    })
})