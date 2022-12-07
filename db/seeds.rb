#create a user using the faker gem
Book.destroy_all
Book.create!([{
    id: 1,
  title: "the love hypothesis",
  author: "Ali Hazelwood",
  likes: 4,
  category_id: 1,
  url: " https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396133/love_hypos_pvbj7z.jpg"
},
{
    id: 2,
  title: "Kiss and tell",
  author: "Kiaren Scott",
  likes: 4,
  category_id: 2,
  url: "https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396659/kiss_and_tell_pl1ffu.jpg"
  
},
{
    id: 3,
 title: "Wonder",
  author: "Puj Palacio",
  likes: 4,
  category_id: 3,
  url: "https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396197/wonder_fs004c.jpg"
},
{
    id: 4,
    title: "pet semetary",
     author: "Stephene King",
     likes: 4,
     category_id: 3,
     url: "https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396308/scarycat_grwexh.jpg"
   },
   {
    id: 5,
    title: "Alfie",
     author: "Shirley Hughes",
     likes: 4,
     category_id: 3,
     url: "https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396255/alfie_h3gqhn.jpg"
   },
   {
    id: 6,
    title: "Dark Justice",
     author: "Jack Huggins",
     likes: 4,
     category_id: 3,
     url: "https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396380/jack_svjkml.jpg"
   }
   
])
Review.create!([{
    user_id: rand(1..6), 
    book_id: rand(1..6),    
    comment: "I love this"
},
{
    user_id: rand(1..6), 
    book_id: rand(1..6),    
    comment: "the best book ever"
},
{
    user_id: rand(1..6), 
    book_id: rand(1..6),    
    comment: "just ok"
},
{
    user_id: rand(1..6), 
    book_id: rand(1..6),    
    comment: "fantastic"
},
{
    user_id: rand(1..6), 
    book_id: rand(1..6),    
    comment: "love it"
},
{
    user_id: rand(1..6), 
    book_id: rand(1..6),    
    comment: "thrilling"
},
{
    user_id: rand(1..6), 
    book_id: rand(1..6),    
    comment: "the best book ever"
}
])

