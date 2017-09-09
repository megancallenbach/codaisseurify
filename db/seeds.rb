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

song1 = Song.create!(name: "Big girls cry", length: 3.42, genre: "Pop", release_date: Date.new(2015,4,15), artist: artist_sia)
song2 = Song.create!(name: "Chandelier", length: 3.42, genre: "Pop", release_date: Date.new(2016,3,23), artist: artist_sia)
song3 = Song.create!(name: "Window Shopper", length: 3.42, genre: "Hip Hop", release_date: Date.new(2010,4,13), artist: artist_50cent)
song4 = Song.create!(name: "Drunk in Love", length: 3.22, genre: "R&B", release_date: Date.new(2016,6,21), artist: artist_beyonce)
song5 = Song.create!(name: "Crazy in Love", length: 4.02, genre: "Pop", release_date: Date.new(2016,12,23), artist: artist_beyonce)
song6 = Song.create!(name: "Royals", length: 3.42, genre: "Indie", release_date: Date.new(2015,3,23), artist: artist_lorde)
song7 = Song.create!(name: "Tennis Court", length: 3.12, genre: "Indie", release_date: Date.new(2013,10,3), artist: artist_lorde)
song8 = Song.create!(name: "Wake Me Up", length: 4.42, genre: "Electronic", release_date: Date.new(2013,9,23), artist: artist_avicii)
song9 = Song.create!(name: "Hey Brother", length: 3.32, genre: "Electronic", release_date: Date.new(2013,5,23), artist: artist_avicii)
song10 = Song.create!(name: "Love Story", length: 2.52, genre: "Pop", release_date: Date.new(2008,6,22), artist: artist_taylor)
song11 = Song.create!(name: "Blank Space", length: 3.12, genre: "Pop", release_date: Date.new(2014,3,23), artist: artist_taylor)
song12 = Song.create!(name: "Wildest Dreams", length: 3.42, genre: "Pop", release_date: Date.new(2014,3,23), artist: artist_taylor)

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/meganc94/image/upload/c_scale,w_233/v1504786423/sia_pddz7i.png", artist: artist_sia)
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/meganc94/image/upload/v1504790240/taylorswift_ae3jeg.jpg", artist: artist_taylor)
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/meganc94/image/upload/v1504786422/50cent_w2pbr2.jpg", artist: artist_50cent)
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/meganc94/image/upload/v1504790238/lorde_cbm0va.jpg", artist: artist_lorde)
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/meganc94/image/upload/v1504786422/beyonce_hrw9lo.jpg", artist: artist_beyonce)
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/meganc94/image/upload/v1504790244/Avicii_b7poya.jpg", artist: artist_avicii)
