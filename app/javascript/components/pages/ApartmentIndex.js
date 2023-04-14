import React from 'react'
import { Card, CardBody, Button, CardTitle, CardText } from 'reactstrap'

const ApartmentIndex = ({ apartments }) => {

  return (
    <>
        <h1>Apartment Listings</h1>
        <div className="index-cards">
            {apartments?.map((apartment, index) => {
              return(
                <Card
                  key={index}
                  color="light"
                  style={{
                    width: '18rem'
                  }}
                >
                  <img
                    alt={apartment.address}
                    src={apartment.image}
                  />
                  <CardBody>
                    <CardTitle tag="h5">
                      {apartment.address}, {apartment.city}, {apartment.state}
                    </CardTitle>                         
                     <CardText> Pets: {apartment.pets + ""}</CardText>
                     <CardText> Bedrooms: {apartment.bedrooms}</CardText>
                     <CardText> Bathrooms: {apartment.bathrooms}</CardText>
                     <CardText> Square Footage: {apartment.square_footage}</CardText>
                     <CardText> Price: {apartment.price}</CardText>
                     <CardText> Utilities: {apartment.utilities}</CardText>
                    <Button>
                      Button
                    </Button>
                  </CardBody>
                </Card>
              )
            })}
        </div>
    </>
  )
}

export default ApartmentIndex