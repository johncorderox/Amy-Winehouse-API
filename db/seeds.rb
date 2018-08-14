
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
