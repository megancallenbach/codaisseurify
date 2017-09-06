# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all

artist1 = Artist.create!(name: "Sia", genre: "Pop")
artist2 = Artist.create!(name: "50cent", genre: "HipHop")

song1 = Song.create!(name: "Big girls cry", length: 3.42, genre: "Pop", artist: artist1)
song2 = Song.create!(name: "Chandelier", length: 3.42, genre: "Pop", artist: artist1)
