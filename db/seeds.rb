# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Photo.destroy_all
Song.destroy_all
Artist.destroy_all


artist_sia = Artist.create!(name: "Sia", genre: "Pop")
artist_50cent = Artist.create!(name: "50cent", genre: "HipHop")
artist_taylor = Artist.create!(name: "Taylor Swift", genre: "Pop/Country")
artist_lorde = Artist.create!(name: "Lorde", genre: "Indie/Pop")
artist_avicii = Artist.create!(name: "Avicii", genre: "Electronic")
artist_beyonce = Artist.create!(name: "Beyonce", genre: "R&B/Pop")

song1 = Song.create!(name: "Big girls cry", length: 3.42, genre: "Pop", artist: artist_sia)
song2 = Song.create!(name: "Chandelier", length: 3.42, genre: "Pop", artist: artist_sia)

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/meganc94/image/upload/c_scale,w_233/v1504786423/sia_pddz7i.png", artist: artist_sia)
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/meganc94/image/upload/v1504786423/taylorswift_cxmaox.jpg", artist: artist_taylor)
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/meganc94/image/upload/v1504786422/50cent_w2pbr2.jpg", artist: artist_50cent)
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/meganc94/image/upload/v1504786422/lorde_z58ozw.jpg", artist: artist_lorde)
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/meganc94/image/upload/v1504786422/beyonce_hrw9lo.jpg", artist: artist_beyonce)
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/meganc94/image/upload/v1504786422/avicii_zrqnfz.jpg", artist: artist_avicii)
