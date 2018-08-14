# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Groups
Group.create(name: "Beach House")

# Artists
Artist.create(name: "Victoria Legrand", position: "Vocalist", active_member: true)
Artist.create(name: "Alex Scally", position: "Guitarist", active_member: true)
Artist.create(name: "Daniel Franz", position: "Drummer", active_member: false)

# Albums
Album.create(name: "Beach House", artist: Artist.first)
Album.create(name: "Beach House", artist: Artist.second)
Album.create(name: "Devotion", artist: Artist.first)
Album.create(name: "Devotion", artist: Artist.second)
Album.create(name: "Teen Dream", artist: Artist.first)
Album.create(name: "Teen Dream", artist: Artist.second)
Album.create(name: "Bloom", artist: Artist.first)
Album.create(name: "Bloom", artist: Artist.second)
Album.create(name: "Depression Cherry", artist: Artist.first)
Album.create(name: "Depression Cherry", artist: Artist.second)
Album.create(name: "Thank Your Lucky Stars", artist: Artist.first)
Album.create(name: "Thank Your Lucky Stars", artist: Artist.second)
Album.create(name: "B Sides and Rarities", artist: Artist.first)
Album.create(name: "B Sides and Rarities", artist: Artist.second)
Album.create(name: "7", artist: Artist.first)
Album.create(name: "7", artist: Artist.second)

# Songs
Song.create(name: "Saltwater", length: 2.55, album: Album.find(name: "Beach House" ))
Song.create(name: "Tokyo Witch", length: 3.42, album: Album.find(name: "Beach House" ))
Song.create(name: "Apple Orchard", length: 4.31, album: Album.find(name: "Beach House" ))
Song.create(name: "Master of None",length: 3.19, album: Album.find(name: "Beach House" ))
Song.create(name: "Auburn and Ivory", length: 4.30, album: Album.find(name: "Beach House" ))
Song.create(name: "Childhood", length: 3.36, album: Album.find(name: "Beach House" ))
Song.create(name: "Lovlier Girl", length: 3.03, album: Album.find(name: "Beach House" ))
Song.create(name: "House on the Hill", length: 3.15, album: Album.find(name: "Beach House" ))
Song.create(name: "Heart and Lungs", length: 7.50, album: Album.find(name: "Beach House"))

Song.create(name: "Wedding Bell", length: 3.55, album: Album.find(name: "Devotion"))
Song.create(name: "You Came To Me", length: 4.05, album: Album.find(name: "Devotion"))
Song.create(name: "Gila", length: 4.46, album: Album.find(name: "Devotion"))
Song.create(name: "Turtle Island", length: 4.00, album: Album.find(name: "Devotion"))
Song.create(name: "Holy Dances", length: 4.19, album: Album.find(name: "Devotion"))
