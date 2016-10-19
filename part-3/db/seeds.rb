include Faker

10.times do |count|
  User.create({
    email: Internet.email,
    username: Internet.user_name,
    password: "password"
    })
  Restaurant.create({
    owner_id: count + 1,
    name: Company.name,
    address: Address.street_address,
    city: Address.city,
    state: Address.state_abbr,
    zip: Address.zip
    })
end


