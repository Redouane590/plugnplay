
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "hello"
puts "destroy old data"
Booking.destroy_all
Boat.destroy_all
User.destroy_all
puts "old data destroyed"

# 1. CREER DES USERS (3)
puts "start seeding"
puts "seeding users"
user1 = User.create!(email: "user1@gmail.com", password: "azerty", nickname: "user1", photo_url: "https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80", bio: "Bonjour.")

user2 = User.create!(email: "user2@gmail.com", password: "azerty1", nickname: "user2", photo_url: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80", bio: "Bonjour.")

user3 = User.create!(email: "user3@gmail.com", password: "azerty2", nickname: "user3", photo_url: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80", bio: "Bonjour.")

# 2. CREER DES boatS (3 ou 4 boats par user)
puts "seeding boats"
boat1 = Boat.create!(title: "Beneteau", description:"Un beau et très rare bateau pour une croisière en mer Thyrréenne ou dans les îles Eoliennes ! Profitez du paysage paradisiaque sur notre bateau !
        Avec ce 5 cabines vous pourrez parfaitement naviguer à 10 personnes, n'hésitez pas si vous avez besoin d'informations complémentaires.", photo_url:"https://www.clickandboat.com/location-bateau/tropea/voilier/beneteau-ms-20-xp9y7", category:"voilier", user_id: user1.id, price: 300 , address:"Tropea")

boat2 = Boat.create!(title: "Bavaria", description:"Si vous êtes un groupe de jusqu'à 9 personnes, Bavaria 44 est un voilier parfait pour votre aventure de navigation geek.
      Vous pouvez profiter d'une délicieuse salade grecque ou bronzer à bord de ce bateau incroyable.",
      photo_url:"https://www.clickandboat.com/location-bateau/alimos/voilier/bavaria-44-xwvjw", category:"voilier", user_id: user2.id, price: 400 , address: "Alimos, Grèce")

boat3 = Boat.create!(title: "Catana", description:"Belle, nouvelle Bali 4.3 vous attend à Split! Ce catamaran étonnant comporte 6 cabines au total (4 + 2), avec 12 couchettes (8 + 2 + 2).
       De plus, il y a 4 toilettes et une cuisine moderne, entièrement équipée et moderne avec cuisinière à gaz, four, réfrigérateur, congélateur et couverts.", photo_url:"https://www.clickandboat.com/location-bateau/biograd-na-moru/catamaran/bali-catana-bali-4-3-gg9pg", category:"catamaran", user_id: user3.id, price:400 , address:"Marina Kornati, Biograd na Moru")

boat4 = Boat.create!(title: "Lagoon", description:"12 personnes,6 cabines,12 couchages,2 salles de bain", photo_url:"https://www.clickandboat.com/location-bateau/croatie/catamaran/lagoon-42-k59zw6g", category:"catamaran", user_id: user3.id, price: 100 ,address:"Croatie, Croatie")

boat5 = Boat.create!(title: "Gulet", description:"À bord, vous avez la chance de découvrir la vraie beauté que les eaux égéennes ont à offrir. Imaginez-vous à bord d'une croisière le long des magnifiques côtes égéennes.", photo_url:"https://www.clickandboat.com/location-bateau/bodrum/go%C3%A9lette/gulet-tirhandil-q4k5842", category:"goélette", user_id: user2.id, price:500, address:"Gumbet, Bodrum")

boat6 = Boat.create!(title: "Robert Clark", description:"Bienvenue à bord de notre magnifique yacht à voile ketch de 72 pieds. Cet incroyable navire a passé 5 ans en restauration, pour pouvoir accueillir et livrer un temps incroyable à bord.", photo_url:"https://www.clickandboat.com/location-bateau/sydney/go%C3%A9lette/robert-clark-72-bev25z", category:"goélette", user_id: user3.id, price: 600, address:"Sydney Harbour, Sydney")

boat7 = Boat.create!(title: "Turkish Gulet", description:"La Barbarossa est une goélette turque bien entretenue de 23 m construite à Istanbul.", photo_url:"https://www.clickandboat.com/location-bateau/il-mellie%C4%A7a/go%C3%A9lette/turkish-gulet-motor-sailing-yacht-pb741", category:"goélette", user_id: user3.id, price: 200, address:"Bali")

boat8 = Boat.create!(title: "Jeanneau", description:"L'ambiance est chaleureuse et raffinée, douce et accueillante. À l'intérieur, ils présentent des lignes épurées et un aménagement ouvert spacieux.",
        photo_url:"https://u2n3p7k8.stackpathcdn.com/13576-75900-thickbox/we-vibe-chorus.jpg", category:"goélette", user_id: user3.id, price: 600 , address:"Tropea, Italie")

boat9 = Boat.create!(title: "Sun odyssey", description:"Il reflète l'harmonie à bord, et ce bien-être découle d'une ergonomie astucieuse, bénéficie d'un aménagement entièrement nouveau et innovant pour une plus grande aisance de déplacement sur le bateau.", photo_url:"https://www.clickandboat.com/location-bateau/rome/voilier/jeanneau-sun-odyssey-440-w74b5d", category:"voilier", user_id: user3.id, price: 700, address:"Marina di Nettuno, Rome")

boat10= Boat.create!(title: "Fontaine Pajot", description:"8 personnes, 4 cabines, 8 couchages, 4 salles de bain", photo_url:"https://www.clickandboat.com/location-bateau/croatie/catamaran/fountaine-pajot-astrea-42-bk5bqew", category:"catamaran", user_id: user3.id, price: 200, address:"Croatie, Croatie")

# 3. CREER DES BOOKINGS
puts "all done"

booking1 = Booking.create!(start_date: "2022-11-22", user_id: user1.id, boat_id: boat2.id, status: "pending", end_date:"2022-11-24")
