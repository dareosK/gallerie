require "date"

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

User.create!([
  {
    email: "emoellervon@icloud.com",
    password: "Secret"
  }])
puts "First"


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


Show.create!([
  {
    title: "Amazzing",
    statement: "This is a very interesting statement",
    user_id: User.first.id
}])

Artwork.create!({
    title: "Still life",
    artist: "Van Gogh",
    description: "Oil on canvas",
    user_id: User.first.id,
    show_id: Show.first.id
})
