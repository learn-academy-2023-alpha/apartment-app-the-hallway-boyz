require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  let (:user) {User.create email: 'Worldwideapartments@gmail.com', password: 'iamthegreatest123', password_confirmation: 'iamthegreatest123'}
  describe "GET /index" do
    it "gets a list of apartments" do 
      user.apartments.create(
        bedrooms: 5,
        bathrooms: 1.5,
        address: "123 fourth street",
        city: "Miami",
        state: "FL",
        square_footage: 600, 
        price: 300000, 
        utilities: "washer, dryer, gas and electric",
        pets: true, 
        image: "http://image.com")

      get '/apartments'
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(apartment.length).to eq 1
    end
  end
end
