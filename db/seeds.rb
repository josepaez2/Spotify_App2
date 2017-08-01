# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.destroy_all
Album.destroy_all
Song.destroy_all


artista = Artist.create(name: "Pepito")

10.times do |i|
	# Artist.create(name: i + 100)
	artist = Artist.create(name: i + 100)
	puts "artist"
	puts artist
	artist.albums.create(name: i + 1000)
	puts "artist.albums"
	puts artist.albums
	puts "artist.albums[0]"
	puts artist.albums[0]
	puts "artist.albums[0].songs"
	puts artist.albums[0].songs
	artist.albums[0].songs.create(name: i + 1 + 10000)
	artist.albums[0].songs.create(name: i + 2 + 10000)
	artist.albums[0].songs.create(name: i + 3 + 10000)
	puts "artist.albums[0]"
	puts artist.albums[0]
	puts "artist.albums[0].songs"
	puts artist.albums[0].songs
end

