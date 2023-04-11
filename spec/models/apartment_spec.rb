require 'rails_helper'

RSpec.describe Apartment, type: :model do
  let (:user) {User.create email: 'Worldwideapartments@gmail.com', password: 'iamthegreatest123', password_confirmation: 'iamthegreatest123'}
  
  it 'should validate bedrooms' do
    apartment = user.apartments.create(bathrooms: 1.5, address: "123 fourth street", city: "Miami", state: "FL", square_footage: 600, price: 300000, utilities: "washer, dryer, gas and electric", pets: true, image: "http://image.com")
    expect(apartment.errors[:bedrooms]).to include "can't be blank"
  end

  it 'should validate address' do
    apartment = user.apartments.create(bedrooms:5, bathrooms: 1.5, city: "Miami", state: "FL", square_footage: 600, price: 300000, utilities: "washer, dryer, gas and electric", pets: true, image: "http://image.com")
    expect(apartment.errors[:address]).to include "can't be blank"
  end

  it 'should validate city' do
    apartment = user.apartments.create(bathrooms: 1.5, address: "123 fourth street", state: "FL", square_footage: 600, price: 300000, utilities: "washer, dryer, gas and electric", pets: true, image: "http://image.com")
    expect(apartment.errors[:city]).to include "can't be blank"
  end

  it 'should validate state' do
    apartment = user.apartments.create(bathrooms: 1.5, address: "123 fourth street", city: "Miami", square_footage: 600, price: 300000, utilities: "washer, dryer, gas and electric", pets: true, image: "http://image.com")
    expect(apartment.errors[:state]).to include "can't be blank"
  end

  it 'should validate square_footage' do
    apartment = user.apartments.create(bathrooms: 1.5, address: "123 fourth street", city: "Miami", state: "FL", price: 300000, utilities: "washer, dryer, gas and electric", pets: true, image: "http://image.com")
    expect(apartment.errors[:square_footage]).to include "can't be blank"
  end

  it 'should validate price' do
    apartment = user.apartments.create(bathrooms: 1.5, address: "123 fourth street", city: "Miami", state: "FL", square_footage: 600, utilities: "washer, dryer, gas and electric", pets: true, image: "http://image.com")
    expect(apartment.errors[:price]).to include "can't be blank"
  end

  it 'should validate utilities' do
    apartment = user.apartments.create(bathrooms: 1.5, address: "123 fourth street", city: "Miami", state: "FL", square_footage: 600, price: 300000, pets: true, image: "http://image.com")
    expect(apartment.errors[:utilities]).to include "can't be blank"
  end
  
  it 'should validate pets' do
    apartment = user.apartments.create(bathrooms: 1.5, address: "123 fourth street", city: "Miami", state: "FL", square_footage: 600, price: 300000, utilities: "washer, dryer, gas and electric", image: "http://image.com")
    expect(apartment.errors[:pets]).to include "can't be blank"
  end

  it 'should validate image' do
    apartment = user.apartments.create(bathrooms: 1.5, address: "123 fourth street", city: "Miami", state: "FL", square_footage: 600, price: 300000, utilities: "washer, dryer, gas and electric", pets: true)
    expect(apartment.errors[:image]).to include "can't be blank"
  end

  it 'should validate user_id' do
    apartment = Apartment.create(bathrooms: 1.5, address: "123 fourth street", city: "Miami", state: "FL", square_footage: 600, price: 300000, utilities: "washer, dryer, gas and electric", pets: true, image: "http://image.com")
    expect(apartment.errors[:user_id]).to include "can't be blank"
  end

end
