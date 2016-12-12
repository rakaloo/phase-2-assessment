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

review_seeds = [
    {author_id: 1, restaurant_id: 2, rating: 5, content: "Excellent!"},
    {author_id: 2, restaurant_id: 3, rating: 1, content: "Ewwwww"},
    {author_id: 3, restaurant_id: 4, rating: 4, content: "Pretty good. Wish they had tots."},
    {author_id: 4, restaurant_id: 5, rating: 3, content: "Great food. No parking."},
    {author_id: 5, restaurant_id: 6, rating: 2, content: "My mom was very disappointed"},
    {author_id: 6, restaurant_id: 7, rating: 5, content: "Had my wedding here, love this place!"},
    {author_id: 7, restaurant_id: 8, rating: 1, content: "Literally, the worst."},
    {author_id: 8, restaurant_id: 9, rating: 4, content: "Best place within 200 ft from my house."},
    {author_id: 9, restaurant_id: 10, rating: 3, content: "S'okay."},
    {author_id: 10, restaurant_id: 1, rating: 2, content: "Got food poisoning, but great service."}
]

review_seeds.each { |review| Review.create(review) }
