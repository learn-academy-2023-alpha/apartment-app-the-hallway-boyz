import React from 'react'
import { render, screen } from '@testing-library/react'
import { BrowserRouter } from "react-router-dom"
import Header from './Header'
import '@testing-library/jest-dom/extend-expect';

describe ("<Header />", () =>{
    it("renders a header", () => {
        render(
            <BrowserRouter>
                <Header />
            </BrowserRouter>
        )
        const link = screen.getByRole('link', {
            name: /view apartment listings/i
          })
        expect(link).toBeInTheDocument()
    })
})