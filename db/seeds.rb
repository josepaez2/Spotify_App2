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


artist = Artist.create(name: "Pepito")

10.times do |i|
	Artist.create(name: i + 100)
	artist.albums.create(name: i + 1000)
	artist.albums[i].songs.create(name: i + 10000)
end