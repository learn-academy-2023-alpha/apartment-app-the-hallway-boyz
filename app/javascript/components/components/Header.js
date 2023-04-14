import React from 'react'
import Navigation from './Navigation'

const Header = (props) => {
  return (
    <>
        <Navigation className="links" {...props}/>
    </>
  )
}

export default Header