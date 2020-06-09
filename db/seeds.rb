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


# ========== #
# USER SEEDS #
# ========== #

mike = User.create!(
    email: "emoellervon@icloud.com",
    password: "Secret",
  )
puts "First User Created"

oscar = User.create!(
  email: "rinaldi@gmail.com",
  password: "Secret",
  name: "Marina Rinaldi",
  bio: "Hi I am from Milano. I have studied at 'Kunstakademie Düsseldorf' under Joseph Beuys. He taught us the power of art. This virtual gallery helps me spread my work and fight for a better world.",
  )
puts "Second User Created"

puts "======Users created"

# ============= #
# WRITING SEEDS #
# ============= #

Writing.create!([
  {
    title: "Art Article",
    publishing_date: DateTime.new(2020,9,14),
    publisher: "New York Times",
    article: "This is a very short article that is just placed here as a placeholder",
    user_id: oscar.id
  },
  {
    title: "Imagine a magic Tree",
    publishing_date: DateTime.parse("25-09-2020"),
    publisher: "Arts Space",
    article: "And then suddenly someone walked thru the forest and stood in front of this giant tree... A Kauri",
    user_id: oscar.id
  }])

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
    user_id: mike.id
  }])
puts "======Writings for First User created"

# # ========== #
# # SHOW SEEDS #
# # note: each Show needs Panels, where Artworks  are displayed.
# # Find the iteration for the Panel seeds
# # on the ARTWORK SEEDS section.
# # ========== #

# Show 1
show_one_img = URI.open("https://photos.lensculture.com/original/963c7429-9d8d-4d4a-b8e9-f5f6f5fcfa61.jpg")
show_one = Show.new(
    title: "Alec Soth - I Know How Furiously Your Heart is Beating",
    statement: "After abandoning portraiture for an entire year, Alec Soth returns to the genre with a new photobook, emphasizing the importance of collaboration while photographing his subjects.
The very first image in Alec Soth’s new book, I Know How Furiously Your Heart Is Beating, reminds me of a time when I was five years old, and I convinced my best friend to let her parakeet out of its cage. In Soth’s photograph titled “Cammy’s View. Salt Lake City.” a cockatiel is perched at a closed window. Its head tilts back to look at the camera. Although the animal isn’t in a cage, it is in a corner and the trees that are visible through the window panes are too far away to be in focus. This scene makes me think of my childhood friend and her bird, because that bird was also drawn towards windows. It didn’t seem to know the difference between glass and air. I can remember watching the little animal as it searched for a way out, immediately knowing that I had made a mistake. When we finally managed to catch the parakeet, its entire body was like a pulsing heart. At that age, I was still negotiating the difference between kindness and cruelty, but with the frightened animal in my fist, I felt that the freedom I negotiated for it was no favor. I knew that, rather than concern for the animal, it had been my own curiosity that prompted all this excitement.",
    user_id: oscar.id
)
show_one.photo.attach(io: show_one_img, filename: '963c7429-9d8d-4d4a-b8e9-f5f6f5fcfa61.jpg', content_type: 'image/jpg')
show_one.save!
puts "Alec Soth Show created"

# Show 2
show_two_img = URI.open("https://news.artnet.com/app/news-upload/2017/06/2004-138-Gedser_A4_440x300mm_LAC-697x1024.jpg")
show_two = Show.new(
    title: "Wolfgang Tilmans - Retrospective",
    statement: "This year's big summer exhibition is devoted to the artist Wolfgang Tillmans. It is the first comprehensive engagement with the medium of photography at the Fondation Beyeler, which some time ago added a wonderful group of works by Tillmans to its collection. Around 200 photographic works dating from 1989 to 2017 will be on show from May 28 to October 1, together with a new audiovisual installation.
Tillmans first made a name for himself in the early 1990s through photographs that have attained iconic status for their evocation of the mood of an entire generation, with its carefree urge for freedom and its desire to seize life’s moments. Soon, however, he widened his focus, experimenting with the means of photography to develop a new visual language. He created his images with and without a camera and also using a photocopier. In addition to traditional genres such as portrait, still life and landscape, the exhibition presents abstract works that play with the limits of the visible. It will show how Tillman’s work is concerned with the creation of images rather than with photography in the conventional sense. The exhibition is being designed in close cooperation with the artist.",
    user_id: oscar.id
)
show_two.photo.attach(io: show_two_img, filename: '2004-138-Gedser_A4_440x300mm_LAC-697x1024.jpg', content_type: 'image/jpg')
show_two.save!
puts "Wolfgang Tillmans Show created"

# Show 3
show_three_img = URI.open("https://d32dm0rphc51dk.cloudfront.net/ntbzf-5vKx_ZZpku5tl1mw/large.jpg")
show_three = Show.new(
    title: "Igor Moritz : Untitled Self",
    statement: "Igor Moritz was born in Poland in 1996. At a young age, he and his family were forced to relocate to London, but when he was old enough, he returned to his home, Lubin, to pursue his studies in fine arts. Moritz’s artistic energy flows out him so intensely; constantly creating with an almost Egon Schieleian-like passion, Moritz’s muse is the world around him.
Those in his most intimate circles are the ones he portrays, giving the viewer a view into Moritz’s world. His paintings and drawing flirt with mimesis while breaking all rules of perspective, proportion and realism. He morphs and composes the perspective, space and figures in a way, in order to create visual tension.
Color is something that is always at the forefront of his works, as Moritz sees color to be a way to tap into the viewer’s visual palette. The effect are artworks that are palpable, emotional, and visceral.",
    user_id: oscar.id
)
show_three.photo.attach(io: show_three_img, filename: 'large.jpg', content_type: 'image/jpg')
show_three.save!
puts "Igor Moritz Show created"

# Show 4
show_four_img = URI.open("https://farm1.staticflickr.com/808/26357169967_7a9c66fa6c_b.jpg")
show_four = Show.new(
    title: "Maria Secio - Ikigami",
    statement: "Maria Sécio (b.1994) from Lisbon, Portugal has just finished her undergraduate studies in Cinematography and Photography at Arts University Bournemouth. So far, she took part in two group exhibitions, both where in Bournemouth. Her photographs have been developing from being diarist to a more painterly and romantic exploration of her subject and surroundings.",
    user_id: oscar.id
)
show_four.photo.attach(io: show_four_img, filename: '26357169967_7a9c66fa6c_b.jpg', content_type: 'image/jpg')
show_four.save!
puts "Maria Secio Show created"

# Show 5
show_five_img = URI.open("https://www.swr.de/swr2/kunst-und-ausstellung/1579886786342,edward-hopper-fondation-beyeler-110~_v-16x9@2dXL_-77ed5d09bafd4e3cf6a5a0264e5e16ea35f14925.jpg")
show_five = Show.new(
    title: "Hopper",
    statement: "",
    user_id: oscar.id
)
show_five.photo.attach(io: show_five_img, filename: '1579886786342,edward-hopper-fondation-beyeler-110~_v-16x9@2dXL_-77ed5d09bafd4e3cf6a5a0264e5e16ea35f14925.jpg', content_type: 'image/jpg')
show_five.save!
puts "Hopper Show created"

# Show 6
show_six_img = URI.open("https://artit.ams3.digitaloceanspaces.com/staging/workspace_images/425_d5a9bb31-b1bc-426e-a405-ca46958c2958_79171376_2496305133947869_947037398255009792_n.jpg")
show_six = Show.new(
    title: "Allistair Walter - Spider",
    statement: "",
    user_id: mike.id
)
show_six.photo.attach(io: show_six_img, filename: '425_d5a9bb31-b1bc-426e-a405-ca46958c2958_79171376_2496305133947869_947037398255009792_n.jpg', content_type: 'image/jpg')
show_six.save!
puts "Allistair Walter Show created"

# Show 7
show_seven_img = URI.open("https://www.stereosis.com/wp-content/uploads/2017/04/Z8-Dareos_Khalili_05.jpg")
show_seven = Show.new(
    title: "Home",
    statement: "Curated by Jacob Aue Sobol, Home contains the work of 10 of the best contemporary Greek Photographers",
    user_id: mike.id
)
show_seven.photo.attach(io: show_seven_img, filename: 'Z8-Dareos_Khalili_05.jpg', content_type: 'image/jpg')
show_seven.save!
puts "Home Show created"

# Show 8
show_eight_img = URI.open("https://media.mutualart.com/Images//2019_02/25/05/054937678/d7af851f-586c-4882-8bad-7f9ae10e7a3e.Jpeg")
show_eight = Show.new(
    title: "Basquiat",
    statement: "",
    user_id: mike.id
)
show_eight.photo.attach(io: show_eight_img, filename: 'd7af851f-586c-4882-8bad-7f9ae10e7a3e.Jpeg', content_type: 'image/jpg')
show_eight.save!
puts "Basquiat Show created"

# Show 9

show_nine_img = URI.open("https://res.cloudinary.com/dlf53umtd/image/upload/v1591366390/gzp248yk1knrckk9wy3qt2yxe5d1.jpg")
show_nine = Show.new(
    title: "Die Brücke",
    statement: "",
    user_id: mike.id
)
show_nine.photo.attach(io: show_nine_img, filename: '698px-Ernst_Ludwig_Kirchner_-_KG_Br%C3%BCcke_%28Ausstellungsplakat_der_Galerie_Arnold_in_Dresden%29.jpeg', content_type: 'image/jpg')
show_nine.save!
puts "Die Brücke Show created"

puts "======Shows created"

## panel image link
wall_panel_img = URI.open("https://res.cloudinary.com/do3fkzte4/image/upload/v1591694256/wall_1_xvvizq.jpg")
##

# # ============= #
# # ARTWORK SEEDS #
# # ============= #

# Artworks Show 1

   Panel.create!([
   show_id: Show.first.id
 ])

panel_one = Panel.first 
panel_one.wall.attach(io: wall_panel_img, filename: 'wall_1_xvvizq.jpg', content_type: 'image/jpg')
panel_one.save!

# panels = Panel.all

# panels.each do |p| 
#     p.wall.attach(io: wall_panel_img, filename: 'wall_1_xvvizq.jpg', content_type: 'image/jpg')
#     p.save!
# end
puts "======Panels for first show created"

show_one_artwork_one_img = URI.open("https://photos.lensculture.com/original/963c7429-9d8d-4d4a-b8e9-f5f6f5fcfa61.jpg")
show_one_artwork_one = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
)
show_one_artwork_one.photo.attach(io: show_one_artwork_one_img, filename: '963c7429-9d8d-4d4a-b8e9-f5f6f5fcfa61.jpg', content_type: 'image/jpg')
show_one_artwork_one.save!

show_one_artwork_two_img = URI.open("https://photos.lensculture.com/original/e278964e-f804-42fb-b560-c81dcb22a36a.jpg")
show_one_artwork_two = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
)
show_one_artwork_two.photo.attach(io: show_one_artwork_two_img, filename: 'e278964e-f804-42fb-b560-c81dcb22a36a.jpg', content_type: 'image/jpg')
show_one_artwork_two.save!

show_one_artwork_three_img = URI.open("https://photos.lensculture.com/original/10054579-e3a4-49b0-8c68-6f7a6b964088.jpg")
show_one_artwork_three = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
)
show_one_artwork_three.photo.attach(io: show_one_artwork_three_img, filename: '10054579-e3a4-49b0-8c68-6f7a6b964088.jpg', content_type: 'image/jpg')
show_one_artwork_three.save!

show_one_artwork_four_img = URI.open("https://photos.lensculture.com/original/180ebb17-5cbb-4e0a-9f83-274d82369a90.jpg")
show_one_artwork_four = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
)
show_one_artwork_four.photo.attach(io: show_one_artwork_four_img, filename: '180ebb17-5cbb-4e0a-9f83-274d82369a90.jpg', content_type: 'image/jpg')
show_one_artwork_four.save!

show_one_artwork_five_img = URI.open("https://photos.lensculture.com/original/e819b04f-66e4-4514-83aa-77d1f2fa4710.jpg")
show_one_artwork_five = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
)
show_one_artwork_five.photo.attach(io: show_one_artwork_five_img, filename: 'e819b04f-66e4-4514-83aa-77d1f2fa4710.jpg', content_type: 'image/jpg')
show_one_artwork_five.save!

show_one_artwork_six_img = URI.open("https://photos.lensculture.com/original/bc2db11c-8a44-40f5-aae0-93fe14a95c3b.jpg")
show_one_artwork_six = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
)
show_one_artwork_six.photo.attach(io: show_one_artwork_six_img, filename: 'bc2db11c-8a44-40f5-aae0-93fe14a95c3b.jpg', content_type: 'image/jpg')
show_one_artwork_six.save!

show_one_artwork_seven_img = URI.open("https://photos.lensculture.com/original/64c023d1-6fc8-4a83-bc59-ed4420c129e8.jpg")
show_one_artwork_seven = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
)
show_one_artwork_seven.photo.attach(io: show_one_artwork_seven_img, filename: '64c023d1-6fc8-4a83-bc59-ed4420c129e8.jpg', content_type: 'image/jpg')
show_one_artwork_seven.save!

show_one_artwork_eight_img = URI.open("https://photos.lensculture.com/original/fedce6c0-6de8-4c76-a879-2a7217db5c03.jpg")
show_one_artwork_eight = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
)
show_one_artwork_eight.photo.attach(io: show_one_artwork_eight_img, filename: 'fedce6c0-6de8-4c76-a879-2a7217db5c03.jpg', content_type: 'image/jpg')
show_one_artwork_eight.save!

#### PLACEHOLDER FOR SHOW_ONE ARTWORK INSTANCE ####

# show_one_artwork_one_img = URI.open("# Fill This")
# artwork_one = Artwork.new(
    # artist: "Alec Soth",
    # show_id: Show.first.id,
    # panel_id: Panel.first.id,
    # user_id: User.first.id,
# )
# artwork_one.photo.attach(io: show_one_artwork_one_img, filename: '# Fill This', content_type: 'image/jpg')
# artwork_one.save!
puts "Alec Soth show artworks done"

puts "======Artworks created"

#### PLACEHOLDER FOR SHOW_TWO ARTWORK INSTANCES ####

# Artworks Show 2

# show_two_artwork_one_img = URI.open("# Fill This")
# show_two_artwork_one = Artwork.new(
#     artist: "Wolfgang Tillmans",
#     show_id: # Fill This,
#     panel_id: # Fill This,
#     user_id: User.first.id,
# )
# show_two_artwork_one.photo.attach(io: show_two_artwork_one_img, filename: '# Fill This', content_type: 'image/jpg')
# show_two_artwork_one.save!



#### PLACEHOLDER FOR SHOW_THREE ARTWORK INSTANCES ####

# Artworks Show 3

# show_three_artwork_one_img = URI.open("# Fill This")
# show_three_artwork_one = Artwork.new(
#     artist: "Igor Moritz",
#     show_id: # Fill This,
#     panel_id: # Fill This,
#     user_id: User.first.id,
# )
# show_three_artwork_one.photo.attach(io: show_three_artwork_one_img, filename: '# Fill This', content_type: 'image/jpg')
# show_three_artwork_one.save!
