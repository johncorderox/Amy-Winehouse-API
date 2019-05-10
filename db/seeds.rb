# Groups
Group.create(name: "Beach House", press_photo: "http://i66.tinypic.com/k9xc8m.jpg", website: "http://beachhousebaltimore.com", label: "Sub Pop")

# Artists
Artist.create(name: "Victoria Legrand", position: "Vocalist", active_member: true, group: Group.first)
Artist.create(name: "Alex Scally", position: "Guitarist", active_member: true, group: Group.first)
Artist.create(name: "James Barone", position: "Drummer", active_member: true, group: Group.first)
Artist.create(name: "Skyler Skjelset", position: "Drummer", active_member: false, group: Group.first)
Artist.create(name: "Daniel Franz", position: "Drummer", active_member: false, group: Group.first)
Artist.create(name: "Chris Bear", position: "Drummer", active_member: false, group: Group.first)
Artist.create(name: "Graham Hill", position: "Drummer", active_member: false, group: Group.first)

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
Song.create(name: "Childhood", length: 3.35, album: Album.find_by(name: "Beach House" ))
Song.create(name: "Lovelier Girl", length: 3.02, album: Album.find_by(name: "Beach House" ))
Song.create(name: "House on the Hill", length: 3.14, album: Album.find_by(name: "Beach House" ))
Song.create(name: "Heart and Lungs", length: 7.50, album: Album.find_by(name: "Beach House"))

Song.create(name: "Wedding Bell", length: 3.54, album: Album.find_by(name: "Devotion"))
Song.create(name: "You Came To Me", length: 4.05, album: Album.find_by(name: "Devotion"))
Song.create(name: "Gila", length: 4.46, album: Album.find_by(name: "Devotion"))
Song.create(name: "Turtle Island", length: 3.59, album: Album.find_by(name: "Devotion"))
Song.create(name: "Holy Dances", length: 4.19, album: Album.find_by(name: "Devotion"))
Song.create(name: "All The Years", length: 3.36, album: Album.find_by(name: "Devotion"))
Song.create(name: "Heart of Chambers", length: 4.25, album: Album.find_by(name: "Devotion"))
Song.create(name: "Some Things Last A Long Time", length: 2.31, album: Album.find_by(name: "Devotion"))
Song.create(name: "Astronaut", length: 5.04, album: Album.find_by(name: "Devotion"))
Song.create(name: "D.A.R.L.I.N.G.", length: 3.18, album: Album.find_by(name: "Devotion"))
Song.create(name: "Home Again", length: 4.08, album: Album.find_by(name: "Devotion"))

Song.create(name: "Zebra", length: 4.50, album: Album.find_by(name: "Teen Dream"))
Song.create(name: "Silver Soul", length: 4.58, album: Album.find_by(name: "Teen Dream"))
Song.create(name: "Norway", length: 3.54, album: Album.find_by(name: "Teen Dream"))
Song.create(name: "Walk in the Park", length: 5.24, album: Album.find_by(name: "Teen Dream"))
Song.create(name: "Used to Be", length: 4.00, album: Album.find_by(name: "Teen Dream"))
Song.create(name: "Lover of Mine", length: 5.06, album: Album.find_by(name: "Teen Dream"))
Song.create(name: "Better Times", length: 4.25, album: Album.find_by(name: "Teen Dream"))
Song.create(name: "10 Mile Stereo", length: 5.05, album: Album.find_by(name: "Teen Dream"))
Song.create(name: "Real Love", length: 5.22, album: Album.find_by(name: "Teen Dream"))
Song.create(name: "Take Care", length: 5.48, album: Album.find_by(name: "Teen Dream"))

Song.create(name: "Myth", length: 4.18, album: Album.find_by(name: "Bloom"))
Song.create(name: "Wild", length: 4.58, album: Album.find_by(name: "Bloom"))
Song.create(name: "Lazuli", length: 5.01, album: Album.find_by(name: "Bloom"))
Song.create(name: "Other People", length: 4.24, album: Album.find_by(name: "Bloom"))
Song.create(name: "The Hours", length: 4.11, album: Album.find_by(name: "Bloom"))
Song.create(name: "Troublemaker", length: 4.55, album: Album.find_by(name: "Bloom"))
Song.create(name: "New Year", length: 5.25, album: Album.find_by(name: "Bloom"))
Song.create(name: "Wishes", length: 4.47, album: Album.find_by(name: "Bloom"))
Song.create(name: "On the Sea", length: 5.32, album: Album.find_by(name: "Bloom"))
Song.create(name: "Irene", length: 16.57, album: Album.find_by(name: "Bloom"))

Song.create(name: "Levitation", length: 5.54, album: Album.find_by(name: "Depression Cherry"))
Song.create(name: "Sparks", length: 5.21, album: Album.find_by(name: "Depression Cherry"))
Song.create(name: "Space Song", length: 5.20, album: Album.find_by(name: "Depression Cherry"))
Song.create(name: "Beyond Love", length: 4.25, album: Album.find_by(name: "Depression Cherry"))
Song.create(name: "10:37", length: 3.48, album: Album.find_by(name: "Depression Cherry"))
Song.create(name: "PPP", length: 6.08, album: Album.find_by(name: "Depression Cherry"))
Song.create(name: "Wildflower", length: 3.39, album: Album.find_by(name: "Depression Cherry"))
Song.create(name: "Bluebird", length: 3.55, album: Album.find_by(name: "Depression Cherry"))
Song.create(name: "Days of Candy", length: 6.15, album: Album.find_by(name: "Depression Cherry"))

Song.create(name: "Majorette", length: 4.00, album: Album.find_by(name: "Thank Your Lucky Stars"))
Song.create(name: "She's So Lovely", length: 4.22, album: Album.find_by(name: "Thank Your Lucky Stars"))
Song.create(name: "All Your Yeahs", length: 3.48, album: Album.find_by(name: "Thank Your Lucky Stars"))
Song.create(name: "One Thing", length: 5.35, album: Album.find_by(name: "Thank Your Lucky Stars"))
Song.create(name: "Common Girl", length: 3.07, album: Album.find_by(name: "Thank Your Lucky Stars"))
Song.create(name: "The Traveller", length: 4.03, album: Album.find_by(name: "Thank Your Lucky Stars"))
Song.create(name: "Elegy to the Void", length: 6.29, album: Album.find_by(name: "Thank Your Lucky Stars"))
Song.create(name: "Rough Song", length: 5.14, album: Album.find_by(name: "Thank Your Lucky Stars"))
Song.create(name: "Somewhere Tonight", length: 4.13, album: Album.find_by(name: "Thank Your Lucky Stars"))

Song.create(name: "Chariot", length: 5.16, album: Album.find_by(name: "B Sides and Rarities"))
Song.create(name: "Baby", length: 3.02, album: Album.find_by(name: "B Sides and Rarities"))
Song.create(name: "Equal Mind", length: 3.42, album: Album.find_by(name: "B Sides and Rarities"))
Song.create(name: "Used to Be (2008 Single Version)", length: 4.05, album: Album.find_by(name: "B Sides and Rarities"))
Song.create(name: "White Moon (iTunes Session Remix)", length: 4.07, album: Album.find_by(name: "B Sides and Rarities"))
Song.create(name: "Baseball Diamond", length: 4.36, album: Album.find_by(name: "B Sides and Rarities"))
Song.create(name: "Norway (iTunes Session Remix)", length: 3.16, album: Album.find_by(name: "B Sides and Rarities"))
Song.create(name: "Play the Game", length: 4.18, album: Album.find_by(name: "B Sides and Rarities"))
Song.create(name: "The Arrangement", length: 5.04, album: Album.find_by(name: "B Sides and Rarities"))
Song.create(name: "Saturn Song", length: 4.30, album: Album.find_by(name: "B Sides and Rarities"))
Song.create(name: "Rain in Numbers", length: 2.26, album: Album.find_by(name: "B Sides and Rarities"))
Song.create(name: "I Do Not Care for the Winter Sun", length: 3.11, album: Album.find_by(name: "B Sides and Rarities"))
Song.create(name: "10 Mile Stereo (Cough Syrup Remix)", length: 5.30, album: Album.find_by(name: "B Sides and Rarities"))
Song.create(name: "Wherever You Go", length: 3.26, album: Album.find_by(name: "B Sides and Rarities"))

Song.create(name: "Dark Spring", length: 3.24, album: Album.find_by(name: "7"))
Song.create(name: "Pay No Mind", length: 3.24, album: Album.find_by(name: "7"))
Song.create(name: "Lemon Glow", length: 4.04, album: Album.find_by(name: "7"))
Song.create(name: "L'Inconnue", length: 4.24, album: Album.find_by(name: "7"))
Song.create(name: "Drunk in LA", length: 3.59, album: Album.find_by(name: "7"))
Song.create(name: "Dive", length: 4.25, album: Album.find_by(name: "7"))
Song.create(name: "Black Car", length: 4.11, album: Album.find_by(name: "7"))
Song.create(name: "Lose Your Smile", length: 4.09, album: Album.find_by(name: "7"))
Song.create(name: "Woo", length: 4.14, album: Album.find_by(name: "7"))
Song.create(name: "Girl of the Year", length: 3.51, album: Album.find_by(name: "7"))
Song.create(name: "Last Ride", length: 6.59, album: Album.find_by(name: "7"))
