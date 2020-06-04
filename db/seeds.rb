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
Panel.destroy_all
Show.destroy_all
Writing.destroy_all
User.destroy_all

user_one = User.create!(
    email: "rinaldi@icloud.com",
    password: "Secret",
    name: "Marina Rinaldi", 
    bio: "Hi I am Marina Rinaldi, from Milano. I have stidued at 'Kunstakademie Düsseldorf' under Joseph Beuys. He taught us the power of art. This virtual gallery helps me spred my work and fight for a better world."
  )
puts "First"

oscar = User.create!(
  email: "ovm@gmail.com",
  password: "Secret"
  )


Writing.create!(
    title: "Art Article",
    publishing_date: DateTime.new(2020,9,14),
    publisher: "New York Times",
    article: "This is a very short article that is just placed here as a placeholder",
    user_id: oscar.id
  )

Writing.create!(
    title: "Imagine a magic Tree",
    publishing_date: DateTime.parse("25-09-2020"),
    publisher: "Arts Space",
    article: "And then suddenly someone walked thru the forest and stood in front of this giant tree... A Kauri",
    user_id: oscar.id
  )

puts "Second"
Writing.create!([
  {
    title: "Creative Mushroom",
    publishing_date: DateTime.new(2020,9,14),
    publisher: "Geek Art",
    article: "Do you know Alice and the wonderland? Alice sits on a riverbank on a warm summer day, drowsily reading over her sister’s shoulder, when she catches sight of a White Rabbit in a waistcoat running by her. The White Rabbit pulls out a pocket watch, exclaims that he is late, and pops down a rabbit hole. Alice follows the White Rabbit down the hole and comes upon a great hallway lined with doors. She finds a small door that she opens using a key she discovers on a nearby table. Through the door, she sees a beautiful garden, and Alice begins to cry when she realizes she cannot fit through the door. She finds a bottle marked “DRINK ME” and downs the contents. She shrinks down to the right size to enter the door but cannot enter since she has left the key on the tabletop above her head. Alice discovers a cake marked “EAT ME” which causes her to grow to an inordinately large height. Still unable to enter the garden, Alice begins to cry again, and her giant tears form a pool at her feet. As she cries, Alice shrinks and falls into the pool of tears. The pool of tears becomes a sea, and as she treads water she meets a Mouse. The Mouse accompanies Alice to shore, where a number of animals stand gathered on a bank. After a “Caucus Race,” Alice scares the animals away with tales of her cat, Dinah, and finds herself alone again.",
    user_id: user_one.id
  },
  {
    title: "Imagine a magic Tree",
    publishing_date: DateTime.parse("25-09-2020"),
    publisher: "Arts Space",
    article: "The Wood That Fights Fire... As gold-crazed settlers flocked to the Bay Area in the 19th century, they needed lumber to build their homes and mines. And what better way to get a lot of wood at once than toppling an enormous redwood? Little did they know the wood had a greater legacy in store. In April 1906, San Francisco awoke to a major earthquake. As if the rocking buildings weren’t bad enough, residents were soon battling massive fires that threatened to consume the city. But the city didn’t go up in smoke for one reason: redwoods. Though the fire spread for three days, a curious thing happened when it hit a building made from the mighty tree. While not totally fireproof, the redwood’s low resin content and porous grain allow it to take on moisture, which makes it far more flame-resistant than woods like pine. As one reporter noted, “[I]n all principal directions, the fire was finally stopped in the very midst of frame redwood buildings.” ",
    user_id: user_one.id
  }])
puts "seeding of stories done"

file = URI.open("https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/16077575318379.5c49230e91b9d.jpg")
show_one = Show.new(
    title: "A Maze Ing",
    statement: "Sometimes I am locked in your own walls. Mentally. Physically. What does this do to us? ",
    user_id: user_one.id
)
show_one.photo.attach(io: file, filename: 'art.jpg', content_type: 'image/jpg')
show_one.save!


6.times do
    Panel.create!([
    show_id: Show.first.id
  ])
end
puts "Panels for first show created"

# mpdg = URI.open("https://s.studiobinder.com/wp-content/uploads/2019/12/Manic-Pixie-Dream-Girl-Featured.jpg")

mpdg = URI.open("https://www.pigasus-shop.de/images/product_images/popup_images/7452_0.jpg")

show_two = Show.new(
  title: "Real Art By Real Guys",
  statement: "My ex-girlfriend was very inspiring- a muse, you might say. I'm not going to mention her name at all!",
  user_id: user_one.id
)
show_two.photo.attach(io: mpdg, filename: 'mpdg.jpg', content_type: 'image/jpg')
show_two.save!

dualism = URI.open("https://product-image.juniqe-production.juniqe.com/media/catalog/product/seo-cache/x800/38/13/38-13-202P-Black/Dualism-Genis-Carreras-Poster-im-Kunststoffrahmen.jpg")

show_five = Show.new(
  title: "Dualism, Bauhaus, Shapes",
  statement: "You might say design rules the world. That is true in some ways, good clear minimalist design ruels the world",
  user_id: user_one.id
)
show_five.photo.attach(io: dualism, filename: 'mpdg.jpg', content_type: 'image/jpg')
show_five.save!

mick = URI.open("https://www.artistsposters.com/images/product_images/popup_images/19630.jpg")
show_six = Show.new(
  title: "Dualism, Bauhaus, Shapes",
  statement: "You might say design rules the world. That is true in some ways, good clear minimalist design ruels the world",
  user_id: user_one.id
)
show_six.photo.attach(io: mick, filename: 'mpdg.jpg', content_type: 'image/jpg')
show_six.save!

moro = URI.open("https://i.pinimg.com/originals/87/e5/76/87e576829a9b2784c27f6fc8144f0240.png")
show_seven = Show.new(
  title: "Dualism, Bauhaus, Shapes",
  statement: "You might say design rules the world. That is true in some ways, good clear minimalist design ruels the world",
  user_id: user_one.id
)
show_seven.photo.attach(io: moro, filename: 'mpdg.jpg', content_type: 'image/jpg')
show_seven.save!

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

img_one = URI.open("https://npg.si.edu/exhibit/feature/images/schoeller_full.jpg")
show_five = Show.new(
  title: "Debugged",
  statement: "This photo-story documents the intimate, destructive relationship between a man and his rubber duck.",
  user_id: User.last.id
)
show_five.photo.attach(io: img_one, filename: 'img_one.jpg', content_type: 'image/jpg')
show_five.save!

img_two = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Mona_Lisa-restored.jpg/1200px-Mona_Lisa-restored.jpg")
show_six = Show.new(
  title: "Debugged",
  statement: "This photo-story documents the intimate, destructive relationship between a man and his rubber duck.",
  user_id: User.last.id
)
show_six.photo.attach(io: img_two, filename: 'img_two.jpg', content_type: 'image/jpg')
show_six.save!

show_seven = Show.new(
  title: "Debugged",
  statement: "This photo-story documents the intimate, destructive relationship between a man and his rubber duck.",
  user_id: User.last.id
)
show_seven.photo.attach(io: img_one, filename: 'img_one.jpg', content_type: 'image/jpg')
show_seven.save!

6.times do
    Panel.create!([
    show_id: Show.last.id
  ])
end
puts "Panels for second show created"
