#create a user using the faker gem

Book.destroy_all

12.times do
    User.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        username: Faker::Internet.username,
        password: Faker::Internet.password
    )
end

Book.create!([{
    id: 1,
  title: "the love hypothesis",
  author: "Ali Hazelwood",
  likes: 4,
  category_id: 1,
  image_url: " https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396133/love_hypos_pvbj7z.jpg"
},
{
    id: 2,
  title: "Kiss and tell",
  author: "Kiaren Scott",
  likes: 4,
  category_id: 2,
  image_url: "https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396659/kiss_and_tell_pl1ffu.jpg"
  
},
{
    id: 3,
 title: "Wonder",
  author: "Puj Palacio",
  likes: 4,
  category_id: 3,
  image_url: "https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396197/wonder_fs004c.jpg"
},
{
    id: 4,
    title: "pet semetary",
     author: "Stephene King",
     likes: 4,
     category_id: 3,
     image_url: "https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396308/scarycat_grwexh.jpg"
   },
   {
    id: 5,
    title: "Alfie",
     author: "Shirley Hughes",
     likes: 4,
     category_id: 3,
     image_url: "https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396255/alfie_h3gqhn.jpg"
   },
   {
    id: 6,
    title: "Dark Justice",
     author: "Jack Huggins",
     likes: 4,
     category_id: 3,
     image_url: "https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396380/jack_svjkml.jpg"
   },
   {
    id: 7,
    title: "nuevos secrets",
     author: "alberto marpez",
     likes: 4,
     category_id: 3,
     image_url: "https://i.pinimg.com/564x/fd/41/58/fd4158a6b9ae6ac9ae1201dbdb7f98ee.jpg
     (87 kB)
     "
   },
   {
    id: 8,
    title: "heroe",
     author: "rhoda byryne",
     likes: 5,
     category_id: 3,
     image_url: "https://i.pinimg.com/564x/00/63/62/006362472ae7c176fed485b662063e21.jpg"
    },
   {
    id: 9,
    title: "the magic",
     author: "rhoda byryne",
     likes: 4,
     category_id: 3,
     image_url: "https://i.pinimg.com/564x/3f/62/de/3f62de632678e2743bdd96dd2ebafc3e.jpg"
    },
   {
    id: 10,
    title: "think and grow rich",
     author: "napoleon hill",
     likes: 4,
     category_id: 3,
     image_url: "https://i.pinimg.com/564x/39/0d/73/390d7306b8e3dcd73acb267726036853.jpg"
    },
   {
    id: 11,
    title: "the shift",
     author: "dr wayne dyer",
     likes: 4,
     category_id: 3,
     image_url: "https://i.pinimg.com/564x/33/ba/78/33ba7898d5ed7db034749cac18e00102.jpg"
    },
   {
    id: 12,
    title: "the alchemist",
     author: "paulo coelho",
     likes: 4,
     category_id: 3,
     image_url: "https://i.pinimg.com/564x/a1/38/95/a13895c5b37147767afc9d123a5aed29.jpg"
    }
   
])


Review.create!([{
    user_id: rand(1..12), 
    book_id: rand(1..12),    
    comment: "I love this"
},
{
    user_id: rand(1..12), 
    book_id: rand(1..12),    
    comment: "the best book ever"
},
{
    user_id: rand(1..12), 
    book_id: rand(1..12),    
    comment: "just ok"
},
{
    user_id: rand(1..12), 
    book_id: rand(1..12),    
    comment: "fantastic"
},
{
    user_id: rand(1..12), 
    book_id: rand(1..12),    
    comment: "love it"
},
{
    user_id: rand(1..12), 
    book_id: rand(1..12),    
    comment: "thrilling"
},
{
    user_id: rand(1..12), 
    book_id: rand(1..12),    
    comment: "the best book ever"
}
])
