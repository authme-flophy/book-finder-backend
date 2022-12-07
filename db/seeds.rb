#create a user using the faker gem
30.times do
 Book.create!(
        title: Faker::Book.title,
        author: Faker::Book.author,
        likes: Faker::Number.number(digits: 2),
        category_id: Faker::Number.number(digits: 1)
 )
 
end

