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
  email: "dareos@gmail.com",
  password: "Secret",
  name: "Dareos Khalili",
  bio: "Dareos holds a MA in Cultural Management from Kunsthochschule Berlin-Weißensee. His curatorial work provides a platform, in which one is called to examine the absurdity of human constructs.",
  )
puts "Second User Created"

puts "======Users created"

# ============= #
# WRITING SEEDS #
# ============= #

Writing.create!([
  {
    title: "How self portraits change self perception.",
    publishing_date: DateTime.new(2020,6,12),
    publisher: "New York Times",
    article: "She finds a bottle marked “DRINK ME” and downs the contents. She shrinks down to the right size to enter the door but cannot enter since she has left the key on the tabletop above her head. Alice discovers a cake marked “EAT ME” which causes her to grow to an inordinately large height. ",
    user_id: oscar.id
  },
  {
    title: "Imagine a magic Tree.",
    publishing_date: DateTime.parse("25-05-2020"),
    publisher: "Mono.Kultur",
    article: "And then suddenly someone walked thru the forest and stood in front of this giant tree... A Kauri. The sun was baking the surrounding trees. More than 50 elders were gathered to share knowledge and inspiration on how to save an iconic tree species, kauri, from a lethal pathogen, Phytophthora agathidicida.",
    user_id: oscar.id
  }])

Writing.create!([
  {
    title: "Creative Mushroom.",
    publishing_date: DateTime.new(2020,5,25),
    publisher: "Aesthetica",
    article: "Do you know Alice and the wonderland? Alice sits on a riverbank on a warm summer day, drowsily reading over her sister’s shoulder, when she catches sight of a White Rabbit in a waistcoat running by her. The White Rabbit pulls out a pocket watch, exclaims that he is late, and pops down a rabbit hole.",
    user_id: oscar.id
  },
  {
    title: "Mono Pole",
    publishing_date: DateTime.parse("25-03-2020."),
    publisher: "Arts Space",
    article: "The Wood That Fights Fire... As gold-crazed settlers flocked to the Bay Area in the 19th century, they needed lumber to build their homes and mines. And what better way to get a lot of wood at once than toppling an enormous redwood? Little did they know the wood had a greater legacy in store. ",
    user_id: oscar.id
  }])
Writing.create!([
  {
    title: "Portraits in Isolation.",
    publishing_date: DateTime.new(2020,3,14),
    publisher: "New York Times",
    article: "She finds a bottle marked “DRINK ME” and downs the contents. She shrinks down to the right size to enter the door but cannot enter since she has left the key on the tabletop above her head. Alice discovers a cake marked “EAT ME” which causes her to grow to an inordinately large height. ",
    user_id: oscar.id
  },
  {
    title: "Review of Gaiety is the Most Outstanding Feature of the Soviet Union.",
    publishing_date: DateTime.parse("13-03-2020"),
    publisher: "Mono.Kultur",
    article: "A broad anthology of Russia’s contemporary cultural offerings. Lightness, whatever the title may suggest, is an element scarcely present within Saatchi’s latest exhibition until, that is, you reach the gallery’s top floor where spotlights bounce off slick oil paintings which hang proudly, just waiting to be appreciated.",
    user_id: oscar.id
  }])

Writing.create!(
    title: "Sotheby’s Just Lost Its Lawsuit Against Greece Over an 8th-Century Horse Statue.",
    publishing_date: DateTime.parse("25-02-2020"),
    publisher: "Arts and Culture",
    article: "The decision may have lasting implications for the trade. A lawyer for Greece says the ruling bodes well for the antiquities market. The ministry of culture in Greece has won a court ruling over Sotheby’s that may leave lasting effects on the antiquities market.",
    user_id: oscar.id
  )

puts "======Writings created"

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
    logline: "After abandoning portraiture for an entire year, Alec Soth returns to the genre with a new photobook, emphasizing the importance of collaboration while photographing his subjects...",
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
    logline: "This year's big summer exhibition is devoted to the artist Wolfgang Tillmans. It is the first comprehensive engagement with the medium of photography at the Fondation Beyeler...",
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
    logline: "Igor Moritz was born in Poland in 1996. At a young age, he and his family were forced to relocate to London, but when he was old enough, he returned to his home, Lubin, to pursue his studies in fine arts. Moritz’s artistic energy flows out him so intensely; constantly creating with an almost Egon Schieleian-like passion",
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
    logline: "Maria Sécio (b.1994) from Lisbon, Portugal. Her photographs have been developing from being diarist to a more painterly and romantic exploration of her subject and surroundings",
    statement: "Maria Sécio (b.1994) from Lisbon, Portugal has just finished her undergraduate studies in Cinematography and Photography at Arts University Bournemouth. So far, she took part in two group exhibitions, both where in Bournemouth. Her photographs have been developing from being diarist to a more painterly and romantic exploration of her subject and surroundings.",
    user_id: oscar.id
)
show_four.photo.attach(io: show_four_img, filename: '26357169967_7a9c66fa6c_b.jpg', content_type: 'image/jpg')
show_four.save!
puts "Maria Secio Show created"

# Show 5
show_five_img = URI.open("https://i1.wp.com/thewashingtonlobbyist.com/wp-content/uploads/2019/08/The-Jefferson-Hotel-richmond-edward-hopper-vmfa-october-2019.jpg")
show_five = Show.new(
    title: "The Ultimate Hopper",
    logline: "With watercolors and oil paintings dating from the 1910s to the 1960s, the exhibition will provide an extensive and exciting overview of the multifaceted nature of Edward Hopper’s oeuvre.",
    statement: "",
    user_id: oscar.id
)
show_five.photo.attach(io: show_five_img, filename: 'The-Jefferson-Hotel-richmond-edward-hopper-vmfa-october-2019.jpg', content_type: 'image/jpg')
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
show_seven_img = URI.open("https://www.thebroad.org/sites/default/files/art/neshat_rapture_women_show_hands_0.jpg")
show_seven = Show.new(
    title: "Shirin Neshat - Retrospective",
    statement: "Curated by Jacob Aue Sobol, Home contains the work of 10 of the best contemporary Greek Photographers",
    user_id: mike.id
)
show_seven.photo.attach(io: show_seven_img, filename: 'neshat_rapture_women_show_hands_0.jpg', content_type: 'image/jpg')
show_seven.save!
puts "Shirin Neshat Show created"

# Show 9
show_nine_img = URI.open("https://66.media.tumblr.com/aef231256a10a700488efd7a3a3467ea/tumblr_ozeo7yIB4i1ugxfjno1_1280.jpg")
show_nine = Show.new(
    title: "Natasha Mabille",
    statement: "",
    user_id: mike.id
)
show_nine.photo.attach(io: show_nine_img, filename: '698px-Ernst_Ludwig_Kirchner_-_KG_Br%C3%BCcke_%28Ausstellungsplakat_der_Galerie_Arnold_in_Dresden%29.jpeg', content_type: 'image/jpg')
show_nine.save!
puts "Natasha Mabille Show created"


# Show 10
show_ten_img = URI.open("https://d2jv9003bew7ag.cloudfront.net/uploads/Elmgreen-and-Dragset-Broken-Square-2018-detail.jpg")
show_ten = Show.new(
    title: "Dragset and Elmgreen",
    statement: "",
    user_id: mike.id
)
show_ten.photo.attach(io: show_ten_img, filename: 'Elmgreen-and-Dragset-Broken-Square-2018-detail.jpg', content_type: 'image/jpg')
show_ten.save!
puts "Dragset and Elmgreen Show created"

# Show 11
show_eleven_img = URI.open("https://d2jv9003bew7ag.cloudfront.net/uploads/Jan-Fabre-Thinking-Model-I-2012-image-via-museumtoscale.com_.jpg")
show_eleven = Show.new(
    title: "Jan Fabre",
    statement: "",
    user_id: mike.id
)
show_eleven.photo.attach(io: show_eleven_img, filename: 'Jan-Fabre-Thinking-Model-I-2012-image-via-museumtoscale.com_.jpg', content_type: 'image/jpg')
show_eleven.save!
puts "Jan Fabre Show created"

# Show 8
show_eight_img = URI.open("https://www.adam-themagazine.com/wp-content/uploads/2019/03/basquiat3.jpg")
show_eight = Show.new(
    title: "Basquiat",
    statement: "",
    user_id: mike.id
)
show_eight.photo.attach(io: show_eight_img, filename: 'uploads/2019/03/basquiat3.jpg', content_type: 'image/jpg')
show_eight.save!
puts "Basquiat Show created"

#Show 12
show_twelve_img = URI.open("https://images-na.ssl-images-amazon.com/images/I/71m+hpscF9L.jpg")
show_twelve = Show.new(
    title: "Francesca Woodman - Retrospective",
    statement: "",
    user_id: mike.id
)
show_twelve.photo.attach(io: show_twelve_img, filename: 'images/I/71m+hpscF9L.jpg', content_type: 'image/jpg')
show_twelve.save!
puts "Francesca Woodman Show created"

# Show 13
show_thirteen_img = URI.open("https://www.alexcoghe.com/wp-content/uploads/2014/12/big.jpg")
show_thirteen = Show.new(
    title: "Jacob Aue Sobol - I, Tokyo.",
    statement: "",
    user_id: mike.id
)
show_thirteen.photo.attach(io: show_thirteen_img, filename: 'wp-content/uploads/2014/12/big.jpg', content_type: 'image/jpg')
show_thirteen.save!
puts "Jacob Aue Sobol Show created"

# Show 14
show_fourteen_img = URI.open("https://aestheticamagazine.com/wp-content/uploads/2020/05/E7095534-A7B8-4BA4-AD66-D94094D91F95.jpeg")
show_fourteen = Show.new(
    title: "Body as Performance",
    statement: "",
    user_id: mike.id
)
show_fourteen.photo.attach(io: show_fourteen_img, filename: '2020/05/E7095534-A7B8-4BA4-AD66-D94094D91F95.jpeg', content_type: 'image/jpg')
show_fourteen.save!
puts "Dragset and Elmgreen Show created"

# Show 15
show_fifteen_img = URI.open("https://graphics8.nytimes.com/images/2011/03/10/t-magazine/10mm-heyman/10mm-heyman-custom7.jpg")
show_fifteen = Show.new(
    title: "The Unseen Mark Morrisroe",
    statement: "",
    user_id: mike.id
)
show_fifteen.photo.attach(io: show_fifteen_img, filename: '10mm-heyman/10mm-heyman-custom7.jpg', content_type: 'image/jpg')
show_fifteen.save!
puts "Mark Morrisroe Show created"

# Shows 16
show_sixteen_img = URI.open("https://dazedimg-dazedgroup.netdna-ssl.com/786/azure/dazed-prod/1220/7/1227454.jpg")
show_sixteen = Show.new(
    title: "Peter Hujar - Candy Darling's Legacy",
    statement: "Although Hujar’s celebrity was far outweighed by that of his contemporaries, such as Diane Arbus and Robert Mapplethorpe, he has after-death managed to be considered as one of the greatest photographers of the 20th century.",
    user_id: mike.id
)
show_sixteen.photo.attach(io: show_sixteen_img, filename: '10mm-heyman/10mm-heyman-custom7.jpg', content_type: 'image/jpg')
show_sixteen.save!
puts "Peter Hujar Show created"

#Shows 17
show_seventeen_img = URI.open("https://2yt5hf5ru3lc0191q3nb5yfv-wpengine.netdna-ssl.com/wp-content/uploads/She-Lise-Sarfati-004.jpg")
show_seventeen = Show.new(
    title: "Lise Sarfati",
    statement: "French photographer and artist, Lise Sarfati, is noted for her photographs of elusive characters, often young, who resist any attempt to being pinned down. Her work particularly explores the instability of feminine identity.",
    user_id: mike.id
)
show_seventeen.photo.attach(io: show_seventeen_img, filename: 'wp-content/uploads/She-Lise-Sarfati-004.jpg', content_type: 'image/jpg')
show_seventeen.save!
puts "Lise Sarfati Show created"

#Shows 18
show_eighteen_img = URI.open("https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fwww.all-about-photo.com%2Fimages%2Fphotographer%2FH%2FPHOT-pieter-hugo-2.jpg")
show_eighteen = Show.new(
    title: "Pieter Hugo - scepticism",
    statement: "Hugo’s work is governed by an autodidactic approach to photography and a deep scepticism of the role of the photographic medium. He is one of a generation of post-Apartheid photographers that seeks to confront photography’s history of representing marginalised and disempowered people. ",
    user_id: mike.id
)
show_eighteen.photo.attach(io: show_eighteen_img, filename: 'photographer%2FH%2FPHOT-pieter-hugo-2.jpg', content_type: 'image/jpg')
show_eighteen.save!
puts "Pieter Hugo Show created"

#Shows 19
show_nineteen_img = URI.open("https://79hbm1979mg58bnh1fp50y1bry-wpengine.netdna-ssl.com/wp-content/uploads/2017/05/Ravens2.jpg")
show_nineteen = Show.new(
    title: "Eiki Mori - Tokyo Boy Alone",
    statement: "Japanese artist Eiki Mori is an openly gay man living in Tokyo. He has already produced two highly successful books that look at various aspects of gay life in contemporary modern day Japan, both projects using himself as his subject.",
    user_id: mike.id
)
show_nineteen.photo.attach(io: show_nineteen_img, filename: 'wp-content/uploads/2017/05/Ravens2.jpg', content_type: 'image/jpg')
show_nineteen.save!
puts "Eiki Mori Show created"

#Shows 20
show_twenty_img = URI.open("https://www.positive-magazine.com/edge/wp-content/uploads/2009/10/eikimori5-550x433.jpg")
show_twenty = Show.new(
    title: "Masahisa Fukase - Ravens",
    statement: "Fukase’s haunting series of work was made between 1975 and 1986 in the aftermath of a divorce and was apparently triggered by a mournful train journey to his hometown. The coastal landscapes of Hokkaido serve as the backdrop for his profoundly dark and impressionistic photographs of ominous flocks of crows. The work has been interpreted as an ominous allegory for postwar Japan. ",
    user_id: mike.id
)
show_twenty.photo.attach(io: show_twenty_img, filename: 'uploads/2009/10/eikimori5-550x433.jpg', content_type: 'image/jpg')
show_twenty.save!
puts "Masahisa Fukase Show created"

puts "======Shows Created"


# # ============= #
# # ARTWORK SEEDS #
# # ============= #

# Artworks Show 1
wall_panel_img = URI.open("https://res.cloudinary.com/do3fkzte4/image/upload/v1591694256/wall_1_xvvizq.jpg")
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
    width: 200,
    x: 300,
    y: 300,
)
show_one_artwork_one.photo.attach(io: show_one_artwork_one_img, filename: '963c7429-9d8d-4d4a-b8e9-f5f6f5fcfa61.jpg', content_type: 'image/jpg')
show_one_artwork_one.save!

show_one_artwork_two_img = URI.open("https://photos.lensculture.com/original/e278964e-f804-42fb-b560-c81dcb22a36a.jpg")
show_one_artwork_two = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
show_one_artwork_two.photo.attach(io: show_one_artwork_two_img, filename: 'e278964e-f804-42fb-b560-c81dcb22a36a.jpg', content_type: 'image/jpg')
show_one_artwork_two.save!

show_one_artwork_three_img = URI.open("https://photos.lensculture.com/original/10054579-e3a4-49b0-8c68-6f7a6b964088.jpg")
show_one_artwork_three = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
show_one_artwork_three.photo.attach(io: show_one_artwork_three_img, filename: '10054579-e3a4-49b0-8c68-6f7a6b964088.jpg', content_type: 'image/jpg')
show_one_artwork_three.save!

show_one_artwork_four_img = URI.open("https://photos.lensculture.com/original/180ebb17-5cbb-4e0a-9f83-274d82369a90.jpg")
show_one_artwork_four = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
show_one_artwork_four.photo.attach(io: show_one_artwork_four_img, filename: '180ebb17-5cbb-4e0a-9f83-274d82369a90.jpg', content_type: 'image/jpg')
show_one_artwork_four.save!

show_one_artwork_five_img = URI.open("https://photos.lensculture.com/original/e819b04f-66e4-4514-83aa-77d1f2fa4710.jpg")
show_one_artwork_five = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
show_one_artwork_five.photo.attach(io: show_one_artwork_five_img, filename: 'e819b04f-66e4-4514-83aa-77d1f2fa4710.jpg', content_type: 'image/jpg')
show_one_artwork_five.save!

show_one_artwork_six_img = URI.open("https://photos.lensculture.com/original/bc2db11c-8a44-40f5-aae0-93fe14a95c3b.jpg")
show_one_artwork_six = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
show_one_artwork_six.photo.attach(io: show_one_artwork_six_img, filename: 'bc2db11c-8a44-40f5-aae0-93fe14a95c3b.jpg', content_type: 'image/jpg')
show_one_artwork_six.save!

show_one_artwork_seven_img = URI.open("https://photos.lensculture.com/original/64c023d1-6fc8-4a83-bc59-ed4420c129e8.jpg")
show_one_artwork_seven = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
show_one_artwork_seven.photo.attach(io: show_one_artwork_seven_img, filename: '64c023d1-6fc8-4a83-bc59-ed4420c129e8.jpg', content_type: 'image/jpg')
show_one_artwork_seven.save!

show_one_artwork_eight_img = URI.open("https://photos.lensculture.com/original/fedce6c0-6de8-4c76-a879-2a7217db5c03.jpg")
show_one_artwork_eight = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
show_one_artwork_eight.photo.attach(io: show_one_artwork_eight_img, filename: 'fedce6c0-6de8-4c76-a879-2a7217db5c03.jpg', content_type: 'image/jpg')
show_one_artwork_eight.save!

show_one_artwork_nine_img = URI.open("https://www.alecsoth.com/photography/media/pages/projects/i-know-how-furiously-your-heart-is-beating/3574326809-1551369195/2018_06zl0001.jpg")
artwork_nine = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
artwork_nine.photo.attach(io: show_one_artwork_nine_img, filename: '2018_06zl0001.jpg', content_type: 'image/jpg')
artwork_nine.save!

show_one_artwork_ten_img = URI.open("https://www.alecsoth.com/photography/media/pages/projects/i-know-how-furiously-your-heart-is-beating/2613431417-1551369195/2018_07zl0007.jpg")
artwork_ten = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
artwork_ten.photo.attach(io: show_one_artwork_ten_img, filename: '2018_07zl0007.jpgs', content_type: 'image/jpg')
artwork_ten.save!

show_one_artwork_eleven_img = URI.open("https://www.alecsoth.com/photography/media/pages/projects/i-know-how-furiously-your-heart-is-beating/599627657-1551369195/2018_01zl0057.jpg")
artwork_eleven = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
artwork_eleven.photo.attach(io: show_one_artwork_eleven_img, filename: '2018_01zl0057.jpg', content_type: 'image/jpg')
artwork_eleven.save!

show_one_artwork_twelve_img = URI.open("https://www.alecsoth.com/photography/media/pages/projects/i-know-how-furiously-your-heart-is-beating/240436317-1551369196/2018_10zl0097.jpg")
artwork_twelve = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
artwork_twelve.photo.attach(io: show_one_artwork_twelve_img, filename: '2018_10zl0097.jpg', content_type: 'image/jpg')
artwork_twelve.save!

show_one_artwork_thirteen_img = URI.open("https://www.alecsoth.com/photography/media/pages/projects/i-know-how-furiously-your-heart-is-beating/727850352-1551369196/2018_08zl0122.jpg")
artwork_thirteen = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
artwork_thirteen.photo.attach(io: show_one_artwork_thirteen_img, filename: '2018_08zl0122.jpg', content_type: 'image/jpg')
artwork_thirteen.save!

show_one_artwork_fourteen_img = URI.open("https://www.alecsoth.com/photography/media/pages/projects/i-know-how-furiously-your-heart-is-beating/3705626903-1551369196/2018_06zl0037.jpg")
artwork_fourteen = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
artwork_fourteen.photo.attach(io: show_one_artwork_fourteen_img, filename: '2018_06zl0037.jpg', content_type: 'image/jpg')
artwork_fourteen.save!

show_one_artwork_fifteen_img = URI.open("https://www.alecsoth.com/photography/media/pages/projects/i-know-how-furiously-your-heart-is-beating/3003251971-1551369195/2018_05zl0026.jpg")
artwork_fifteen = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
artwork_fifteen.photo.attach(io: show_one_artwork_fifteen_img, filename: '2018_05zl0026.jpg', content_type: 'image/jpg')
artwork_fifteen.save!

show_one_artwork_sixteen_img = URI.open("https://www.alecsoth.com/photography/media/pages/projects/i-know-how-furiously-your-heart-is-beating/2200033043-1551369195/2017_11zl0006.jpg")
artwork_sixteen = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
artwork_sixteen.photo.attach(io: show_one_artwork_sixteen_img, filename: '2017_11zl0006.jpg', content_type: 'image/jpg')
artwork_sixteen.save!

show_one_artwork_seventeen_img = URI.open("https://www.alecsoth.com/photography/media/pages/projects/i-know-how-furiously-your-heart-is-beating/3281594755-1551369195/2018_03zl0073.jpg")
artwork_seventeen = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
artwork_seventeen.photo.attach(io: show_one_artwork_seventeen_img, filename: '2018_03zl0073.jpg', content_type: 'image/jpg')
artwork_seventeen.save!

show_one_artwork_eighteen_img = URI.open("https://www.alecsoth.com/photography/media/pages/projects/i-know-how-furiously-your-heart-is-beating/3708819925-1551369195/2018_05zl0062.jpg")
artwork_eighteen = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
artwork_eighteen.photo.attach(io: show_one_artwork_eighteen_img, filename: '2018_05zl0062.jpg', content_type: 'image/jpg')
artwork_eighteen.save!

show_one_artwork_nineteen_img = URI.open("https://www.alecsoth.com/photography/media/pages/projects/i-know-how-furiously-your-heart-is-beating/2861487732-1551369196/2018_08zl0138.jpg")
artwork_nineteen = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
artwork_nineteen.photo.attach(io: show_one_artwork_nineteen_img, filename: '2018_08zl0138.jpg', content_type: 'image/jpg')
artwork_nineteen.save!

show_one_artwork_twenty_img = URI.open("https://www.alecsoth.com/photography/media/pages/projects/i-know-how-furiously-your-heart-is-beating/2590344561-1554821624/201806zl0066.jpg")
artwork_twenty = Artwork.new(
    artist: "Alec Soth",
    show_id: Show.first.id,
    panel_id: Panel.first.id,
    user_id: User.first.id,
    width: 200,
    x: 300,
    y: 300,
)
artwork_twenty.photo.attach(io: show_one_artwork_twenty_img, filename: '201806zl0066.jpg', content_type: 'image/jpg')
artwork_twenty.save!

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
