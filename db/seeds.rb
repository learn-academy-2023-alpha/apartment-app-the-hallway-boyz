user1 = User.where(email: 'hallwaytest@testing.com').first_or_create(password:'hallwaysboyztest', password_confirmation: 'hallwaysboyztest')

    user1_apartments = [
    {
        bedrooms: 2,
        bathrooms: 1.5,
        address: '42 southest 9th',
        city: 'Los Angeles',
        state: 'CA',
        square_footage: 900,
        price: 900000,
        utilities: 'Not included',
        pets: false,
        image: 'http://image.com'
    }
]
    
    user1_apartments.each do |apartment|
        user1.apartments.create(apartment)
        p "created: #{apartment}"
    end 

user2 = User.where(email: 'hallwaytesting@testing.com').first_or_create(password:'hallwaysboyztesting', password_confirmation: 'hallwaysboyztesting')

user2_apartments = [
    {
        bedrooms: 2,
        bathrooms: 1.5,
        address: '42 southest 9th',
        city: 'Los Angeles',
        state: 'CA',
        square_footage: 900,
        price: 900000,
        utilities: 'Not included',
        pets: false,
        image: 'http://image.com'
    }
]

user2_apartments.each do |apartment|
    user2.apartments.create(apartment)
    p "created: #{apartment}"
end