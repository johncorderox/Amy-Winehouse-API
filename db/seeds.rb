
# Groups
Group.create(name: "Beach House")

# Artists
Artist.create(name: "Victoria Legrand", position: "Vocalist", active_member: true, group: Group.first)
Artist.create(name: "Alex Scally", position: "Guitarist", active_member: true, group: Group.first)
Artist.create(name: "Daniel Franz", position: "Drummer", active_member: false, group: Group.first)

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
Song.create(name: "Saltwater", length: 2.55, album: Album.find_by(name: "Beach House" ))
Song.create(name: "Tokyo Witch", length: 3.42, album: Album.find_by(name: "Beach House" ))
Song.create(name: "Apple Orchard", length: 4.31, album: Album.find_by(name: "Beach House" ))
Song.create(name: "Master of None",length: 3.19, album: Album.find_by(name: "Beach House" ))
Song.create(name: "Auburn and Ivory", length: 4.30, album: Album.find_by(name: "Beach House" ))
Song.create(name: "Childhood", length: 3.36, album: Album.find_by(name: "Beach House" ))
Song.create(name: "Lovlier Girl", length: 3.03, album: Album.find_by(name: "Beach House" ))
Song.create(name: "House on the Hill", length: 3.15, album: Album.find_by(name: "Beach House" ))
Song.create(name: "Heart and Lungs", length: 7.50, album: Album.find_by(name: "Beach House"))

Song.create(name: "Wedding Bell", length: 3.55, album: Album.find_by(name: "Devotion"))
Song.create(name: "You Came To Me", length: 4.05, album: Album.find_by(name: "Devotion"))
Song.create(name: "Gila", length: 4.46, album: Album.find_by(name: "Devotion"))
Song.create(name: "Turtle Island", length: 4.00, album: Album.find_by(name: "Devotion"))
Song.create(name: "Holy Dances", length: 4.19, album: Album.find_by(name: "Devotion"))
Song.create(name: "All The Years", length: 3.36, album: Album.find_by(name: "Devotion"))
Song.create(name: "Heart of Chambers", length: 4.25, album: Album.find_by(name: "Devotion"))
Song.create(name: "Some Things Last A Long Time", length: 2.32, album: Album.find_by(name: "Devotion"))
Song.create(name: "Astronaut", length: 5.05, album: Album.find_by(name: "Devotion"))
Song.create(name: "D.A.R.L.I.N.G.", length: 3.18, album: Album.find_by(name: "Devotion"))
Song.create(name: "Home Again", length: 4.09, album: Album.find_by(name: "Devotion"))
