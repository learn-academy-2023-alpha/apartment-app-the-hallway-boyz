user1 = User.where(email: 'Worldwideapartments@gmail.com').first_or_create(password: 'iamthegreatest123', password_confirmation: 'iamthegreatest123')
user2 = User.where(email: 'hallwaytest@testing.com').first_or_create(password: 'hallwaysboyztest', password_confirmation: 'hallwaysboyztest')

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
        image: "https://images.unsplash.com/photo-1561518663-f32e0091b049?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bWlhbWklMjBhcGFydG1lbnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"
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
        utilities: "Not included",
        pets: false,
        image: "https://images.unsplash.com/photo-1561518663-f32e0091b049?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bWlhbWklMjBhcGFydG1lbnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"
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