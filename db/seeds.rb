#create a user using the faker gem
Book.destroy_all
Book.create!([{
  title: "the love hypothesis",
  author: "Ali Hazelwood",
  likes: 4,
  category_id: 1,
  url: " https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396133/love_hypos_pvbj7z.jpg"
},
{
  title: "Kiss and tell",
  author: "Kiaren Scott",
  likes: 4,
  category_id: 2,
  url: "https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396659/kiss_and_tell_pl1ffu.jpg"
  
},
{
 title: "Wonder",
  author: "Puj Palacio",
  likes: 4,
  category_id: 3,
  url: "https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396197/wonder_fs004c.jpg"
},
{
    title: "pet semetary",
     author: "Stephene King",
     likes: 4,
     category_id: 3,
     url: "https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396308/scarycat_grwexh.jpg"
   },
   {
    title: "Alfie",
     author: "Shirley Hughes",
     likes: 4,
     category_id: 3,
     url: "https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396255/alfie_h3gqhn.jpg"
   },
   {
    title: "Dark Justice",
     author: "Jack Huggins",
     likes: 4,
     category_id: 3,
     url: "https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396380/jack_svjkml.jpg"
   },
   {
    title: "",
     author: "Jack Huggins",
     likes: 4,
     category_id: 3,
     url: "https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396380/jack_svjkml.jpg"
   },
   {
    title: "Dark Justice",
     author: "Jack Huggins",
     likes: 4,
     category_id: 3,
     url: "https://res.cloudinary.com/dooe2s1sd/image/upload/v1670396380/jack_svjkml.jpg"
   }

])
Review.create!([{
    
}])
