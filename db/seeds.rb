#create a user using the faker gem
Book.destroy_all
Book.create!([{
  title: "Physics",
  author: "Pete Docter",
  likes: 4,
  category_id: 1,
  url: "https://res.cloudinary.com/dws2bgxg4/image/upload/cld-sample.jpg"
},
{
  title: "Biology",
  author: "Pete Docter",
  likes: 4,
  category_id: 2,
  url: "https://res.cloudinary.com/dws2bgxg4/image/upload/cld-sample.jpg"
  
},
{
 title: "English",
  author: "Pete Doct",
  likes: 4,
  category_id: 3,
  url: "https://res.cloudinary.com/dws2bgxg4/image/upload/cld-sample.jpg"
}])
