require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  let (:user) {User.create email: 'hallwaytesting@testing.com', password: 'hallwaysboyztesting', password_confirmation: 'hallwaysboyztesting'}
  describe "GET /index" do
    it "gets a list of apartments" do 
      user.apartments.create(
      bedrooms: 2,
      bathrooms: 1.5,
      address: "42 southest 9th",
      city: "Los Angeles",
      state: "CA",
      square_footage: 900,
      price: 900000,
      utilities: "Not included",
      pets: false,
      image: "http://image.com")

      get '/apartments'
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(apartment.length).to eq 1
    end
  end
end
