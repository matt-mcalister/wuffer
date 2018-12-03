# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dog.destroy_all
Woof.destroy_all
dogs = [
  {
    username: "stella_pup" ,
    image_url: "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12235916/Border-Terrier-On-White-03.jpg",
    email: "email@email.gov",
    password: "somethingsecure"
  },
  {
    username: "scarlet_pup",
    image_url: "https://upload.wikimedia.org/wikipedia/commons/b/b6/Australian_Terrier_adult_male.jpg",
    email: "other@email.gov",
    password: "somethingsecure"
  }
]

sample_texts = [
  "Woof woof woof woof!",
  "Woof? woooooof woof.",
  "woof woof woof woof woof woof woof woof woof woof woof woof woof",
  "Woof woof.",
  "wooOOOoOOoOOOOooOOOOoOOOOOOooff",
  "woof."
]

dogs.each do |d|
  dog = Dog.create(d)
  3.times do
    Woof.create(text: sample_texts.sample, dog: dog)
  end
end


2.times do
  dog = Dog.last
  Woof.create(dog: Dog.first, rewoof: Woof.all.sample)
end
