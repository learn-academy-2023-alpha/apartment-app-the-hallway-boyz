user1 = User.where(email: 'Worldwideapartments@gmail.com').first_or_create(password: 'iamthegreatest123', password_confirmation: 'iamthegreatest123')
user2 = User.where(email: 'Worldwideapartments1@gmail.com').first_or_create(password: 'iamthegreatest1234', password_confirmation: 'iamthegreatest123')

    user1_apartments = [
    {
        bedrooms: 5,
        bathrooms: 1.5,
        address: "123 fourth street",
        city: "Miami",
        state: "FL",
        square_footage: 600, 
        price: 300000, 
        utilities: "washer, dryer, gas and electric",
        pets: true, 
        image: "http://image.com"
    }
]
    
    user2_apartments = [
    {
        bedrooms: 2,
        bathrooms: 1.5,
        address: "42 southest 9th",
        city: "Los Angeles",
        state: "CA",
        square_footage: 900,
        price: 900000,
        utilities: "Not included,
        pets: false,
        image: "http://image.com"
    }
]
    user1_apartments.each do |apartment|
        user1.apartments.create(apartment)
        p "created: #{apartment}"
    end
    
    user2_apartments.each do |apartment|
        user2.apartments.create(apartment)
        p "created: #{apartment}"
    end 