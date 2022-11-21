
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
Toy.destroy_all
User.destroy_all
puts "old data destroyed"

# 1. CREER DES USERS (3)
puts "start seeding"
puts "seeding users"
user1 = User.create!(email: "user1@gmail.com", password: "azerty", nickname: "user1", photo_url: "https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80", bio: "Bonjour.")

user2 = User.create!(email: "user2@gmail.com", password: "azerty1", nickname: "user2", photo_url: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80", bio: "Bonjour.")

user3 = User.create!(email: "user3@gmail.com", password: "azerty2", nickname: "user3", photo_url: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80", bio: "Bonjour.")

# 2. CREER DES TOYS (3 ou 4 toys par user)
puts "seeding toys"
toy1 = Toy.create!(title: "Vibromasseur ROMP Beat", description:"4 Modes de Vibration et 6 Vitesses.
      Vibromasseur Bullet. Ultra-Silencieux.", photo_url:"https://u2n3p7k8.stackpathcdn.com/13734-126879-thickbox/romp-beat.jpg", category:"femme", user_id: user1.id, price: 19.99)

toy2 = Toy.create!(title: "Boules de Geisha Luna Beads Noir", description:"Idéal pour les Exercices de Kegel!
       Boules Amovibles.ABS et Silicone Médical.",
      photo_url:"https://u2n3p7k8.stackpathcdn.com/1000-4389-thickbox/lelo-luna-beads-noir.jpg", category:"femme", user_id: user2.id, price: 30)

toy3 = Toy.create!(title: "Vibromasseur Tiger", description:"6 Modes de Vibration & 6 Vitesses.
      Moteur Puissant & Silencieux.Stimulation Point G & Point P.", photo_url:"https://u2n3p7k8.stackpathcdn.com/3606-71933-thickbox/fun-factory-tiger.jpg", category:"femme", user_id: user3.id, price: 30)

toy4 = Toy.create!(title: "Masturbateur Connecté Satisfyer Men Vibration +", description:"Variété Infinie de Programmes !
       Sensations Uniques!Contrôlable à Distance.", photo_url:"https://u2n3p7k8.stackpathcdn.com/12038-54449-thickbox/fleshlight-girls-janice-griffith-eden.jpg", category:"homme", user_id: user3.id, price: 100)

toy5 = Toy.create!(title: "Masturbateur Janice Griffith Vagin Eden", description:"Moulé Selon le Vagin de l'actrice Janice Griffit", photo_url:"https://images.unsplash.com/photo-1525607551316-4a8e16d1f9ba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmVnZXRhYmxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60", category:"à deux", user_id: user2.id, price: 50)

toy6= Toy.create!(title: "Masturbateur Connecté Sam Neo", description:"5 Modes de Plaisir !
      Succion & Vibration !Contrôle Longue Distance.", photo_url:"https://u2n3p7k8.stackpathcdn.com/18301-101595-thickbox/svakom-sam-neo.jpg", category:"homme", user_id: user3.id, price: 100)

toy7= Toy.create!(title: "Cockring Enduro Plus", description:"Érections Plus Dures, Plus Longtemps !
      Ajustable, Résistant & Confortable.", photo_url:"https://u2n3p7k8.stackpathcdn.com/12380-128525-thickbox/nexus-enduro-plus.jpg", category:"homme", user_id: user3.id, price: 200)

toy8= Toy.create!(title: "Stimulateur Connecté We-Vibe Chorus", description:"Encore Plus de Plaisir en Couple!Forme Ajustabl         Contrôlez Depuis l'Application.
  ", photo_url:"https://u2n3p7k8.stackpathcdn.com/13576-75900-thickbox/we-vibe-chorus.jpg", category:"à deux", user_id: user3.id, price: 200)

toy9= Toy.create!(title: "Stimulateur We-Vibe Unite", description:"N°1 du Couple!10 Modes de Vibration. Silicone Doux & Soyeux !
  ", photo_url:"https://u2n3p7k8.stackpathcdn.com/7462-91603-thickbox/we-vibe-unite.jpg", category:"à deux", user_id: user3.id, price: 200)

toy10= Toy.create!(title: "Stimulateur We-Vibe Unite", description:"N°1 du Couple!10 Modes de Vibration. Silicone Doux & Soyeux !
  ", photo_url:"https://u2n3p7k8.stackpathcdn.com/7462-91603-thickbox/we-vibe-unite.jpg", category:"à deux", user_id: user3.id, price: 200)

# 3. CREER DES BOOKINGS
puts "all done"

booking1= Booking.create!(start_date:"2022-11-22" , user_id:user1.id , toy_id:toy2.id , status: "pending", end_date:"2022-11-24")
