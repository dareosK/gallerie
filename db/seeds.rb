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

oscar = User.create!(
  email: "ovm@gmail.com",
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

puts "Second"
Writing.create!([
  {
    title: "Creative Mushroom",
    publishing_date: DateTime.new(2020,9,14),
    publisher: "Geek Art",
    article: "Do you know Alice and the wonderland? Alice sits on a riverbank on a warm summer day, drowsily reading over her sister’s shoulder, when she catches sight of a White Rabbit in a waistcoat running by her. The White Rabbit pulls out a pocket watch, exclaims that he is late, and pops down a rabbit hole. Alice follows the White Rabbit down the hole and comes upon a great hallway lined with doors. She finds a small door that she opens using a key she discovers on a nearby table. Through the door, she sees a beautiful garden, and Alice begins to cry when she realizes she cannot fit through the door. She finds a bottle marked “DRINK ME” and downs the contents. She shrinks down to the right size to enter the door but cannot enter since she has left the key on the tabletop above her head. Alice discovers a cake marked “EAT ME” which causes her to grow to an inordinately large height. Still unable to enter the garden, Alice begins to cry again, and her giant tears form a pool at her feet. As she cries, Alice shrinks and falls into the pool of tears. The pool of tears becomes a sea, and as she treads water she meets a Mouse. The Mouse accompanies Alice to shore, where a number of animals stand gathered on a bank. After a “Caucus Race,” Alice scares the animals away with tales of her cat, Dinah, and finds herself alone again.",
    user_id: oscar.id
  },
  {
    title: "Imagine a magic Tree",
    publishing_date: DateTime.parse("25-09-2020"),
    publisher: "Arts Space",
    article: "The Wood That Fights Fire... As gold-crazed settlers flocked to the Bay Area in the 19th century, they needed lumber to build their homes and mines. And what better way to get a lot of wood at once than toppling an enormous redwood? Little did they know the wood had a greater legacy in store. In April 1906, San Francisco awoke to a major earthquake. As if the rocking buildings weren’t bad enough, residents were soon battling massive fires that threatened to consume the city. But the city didn’t go up in smoke for one reason: redwoods. Though the fire spread for three days, a curious thing happened when it hit a building made from the mighty tree. While not totally fireproof, the redwood’s low resin content and porous grain allow it to take on moisture, which makes it far more flame-resistant than woods like pine. As one reporter noted, “[I]n all principal directions, the fire was finally stopped in the very midst of frame redwood buildings.” ",
    user_id: oscar.id
  }])
puts "seeding of stories done"


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
