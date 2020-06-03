require "date"
require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artwork.destroy_all
Show.destroy_all
Writing.destroy_all
User.destroy_all

User.create!(
    email: "emoellervon@icloud.com",
    password: "Secret"
)

Writing.create!([
  {
    title: "Art Article",
    publishing_date: DateTime.new(2020,9,14),
    publisher: "New York Times",
    article: "This is a very short article that is just placed here as a placeholder",
    user_id: User.first.id
  },
  {
    title: "Imagine a magic Tree",
    publishing_date: DateTime.parse("25-09-2020"),
    publisher: "Arts Space",
    article: "And then suddenly someone walked thru the forest and stood in front of this giant tree... A Kauri",
    user_id: User.first.id
  }])

file = URI.open("https://mymodernmet.com/wp/wp-content/uploads/2019/03/elements-of-art-6.jpg")
show_one = Show.new(
    title: "Amazzing",
    statement: "This is a very interesting statement",
    user_id: User.first.id
)
show_one.photo.attach(io: file, filename: 'art.jpg', content_type: 'image/jpg')
show_one.save!

mpdg = URI.open("https://s.studiobinder.com/wp-content/uploads/2019/12/Manic-Pixie-Dream-Girl-Featured.jpg") 
show_two = Show.new(
  title: "Real Art By Real Guys",
  statement: "My ex-girlfriend was very inspiring- a muse, you might say. I'm not going to mention her name at all!",
  user_id: User.first.id
)
show_two.photo.attach(io: mpdg, filename: 'mpdg.jpg', content_type: 'image/jpg')
show_two.save!

doner = URI.open("https://www.expatica.com/app/uploads/sites/6/2014/05/Doner-kebab-1920x1080.jpg")
show_three = Show.new(
 title: "14 Different Sandwiches I have Known and Loved",
  statement: "Berlin-based photographer Marcus Schmitty documents his existential misery, each feeling represented by a different doner.",
  user_id: User.last.id
)
show_three.photo.attach(io: doner, filename: 'doner.jpg', content_type: 'image/jpg')
show_three.save!

duck = URI.open("https://upload.wikimedia.org/wikipedia/commons/1/14/Rubber_Duck_%288374802487%29.jpg")
show_four = Show.new(
  title: "Debugged",
  statement: "This photo-story documents the intimate, destructive relationship between a man and his rubber duck.",
  user_id: User.last.id
)
show_four.photo.attach(io: duck, filename: 'duck.jpg', content_type: 'image/jpg')
show_four.save!

