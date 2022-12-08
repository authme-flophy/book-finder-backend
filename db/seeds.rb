#create a user using the faker gem
10.times do
    User.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        username: Faker::Internet.username,
        password: Faker::Internet.password
    )
end
30.times do
 Book.create!(
        title: Faker::Book.title,
        author: Faker::Book.author,
        likes: Faker::Number.number(digits: 2),
        category_id: Faker::Number.number(digits: 1)
 )
 
end
30.times do
    Review.create!(
        book_id: rand(1..30),
        user_id: rand(1..10),
        comment: Faker::Lorem.sentence(word_count: 3)
    )
end
30.times do
    Bookcategory.create!(
        name: Faker::Book.name
    )
end
