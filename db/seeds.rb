Group.create!([
  {name: "Beach House"}
])
Album.create!([
  {name: "Beach House", release_date: "October 3, 2006", group_id: 1},
  {name: "Devotion", release_date: "Feburary 26, 2008", group_id: 1},
  {name: "Teen Dream", release_date: "Janurary 26, 2010", group_id: 1},
  {name: "Bloom", release_date: "May 15, 2012", group_id: 1},
  {name: "Depression Cherry", release_date: "August 28, 2015", group_id: 1},
  {name: "Thank Your Lucky Stars", release_date: "October 16, 2015", group_id: 1},
  {name: "B Sides and Rarities", release_date: "June 30, 2017", group_id: 1},
  {name: "7", release_date: "May 11, 2018", group_id: 1}
])
Artist.create!([
  {name: "Victoria Legrand", position: "Vocalist", active_member: true, group_id: 1},
  {name: "Alex Scally", position: "Guitarist", active_member: true, group_id: 1},
  {name: "James Barone", position: "Drummer", active_member: true, group_id: 1},
  {name: "Skyler Skjelset", position: "Bass", active_member: false, group_id: 1},
  {name: "Daniel Franz", position: "Drummer", active_member: false, group_id: 1},
  {name: "Chris Bear", position: "Drummer", active_member: false, group_id: 1},
  {name: "Graham Hill", position: "Drummer", active_member: false, group_id: 1}
])
Song.create!([
  {name: "Saltwater", length: 2.55, album_id: 1, group_id: 1},
  {name: "Tokyo Witch", length: 3.42, album_id: 1, group_id: 1},
  {name: "Apple Orchard", length: 4.31, album_id: 1, group_id: 1},
  {name: "Master of None", length: 3.19, album_id: 1, group_id: 1},
  {name: "Auburn and Ivory", length: 4.3, album_id: 1, group_id: 1},
  {name: "Childhood", length: 3.35, album_id: 1, group_id: 1},
  {name: "Lovelier Girl", length: 3.02, album_id: 1, group_id: 1},
  {name: "House on the Hill", length: 3.14, album_id: 1, group_id: 1},
  {name: "Heart and Lungs", length: 7.5, album_id: 1, group_id: 1},
  {name: "Wedding Bell", length: 3.54, album_id: 2, group_id: 1},
  {name: "You Came To Me", length: 4.05, album_id: 2, group_id: 1},
  {name: "Gila", length: 4.46, album_id: 2, group_id: 1},
  {name: "Turtle Island", length: 3.59, album_id: 2, group_id: 1},
  {name: "Holy Dances", length: 4.19, album_id: 2, group_id: 1},
  {name: "All The Years", length: 3.36, album_id: 2, group_id: 1},
  {name: "Heart of Chambers", length: 4.25, album_id: 2, group_id: 1},
  {name: "Some Things Last A Long Time", length: 2.31, album_id: 2, group_id: 1},
  {name: "Zebra", length: 4.5, album_id: 3, group_id: 1},
  {name: "Silver Soul", length: 4.58, album_id: 3, group_id: 1},
  {name: "Norway", length: 3.54, album_id: 3, group_id: 1},
  {name: "Walk in the Park", length: 5.24, album_id: 3, group_id: 1},
  {name: "Used to Be", length: 4.0, album_id: 3, group_id: 1},
  {name: "Lover of Mine", length: 5.06, album_id: 3, group_id: 1},
  {name: "Better Times", length: 4.25, album_id: 3, group_id: 1},
  {name: "10 Mile Stereo", length: 5.05, album_id: 3, group_id: 1},
  {name: "Real Love", length: 5.22, album_id: 3, group_id: 1},
  {name: "Take Care", length: 5.48, album_id: 3, group_id: 1},
  {name: "Myth", length: 4.18, album_id: 4, group_id: 1},
  {name: "Wild", length: 4.58, album_id: 4, group_id: 1},
  {name: "Lazuli", length: 5.01, album_id: 4, group_id: 1},
  {name: "Other People", length: 4.24, album_id: 4, group_id: 1},
  {name: "The Hours", length: 4.11, album_id: 4, group_id: 1},
  {name: "Troublemaker", length: 4.55, album_id: 4, group_id: 1},
  {name: "New Year", length: 5.25, album_id: 4, group_id: 1},
  {name: "Wishes", length: 4.47, album_id: 4, group_id: 1},
  {name: "On the Sea", length: 5.32, album_id: 4, group_id: 1},
  {name: "Irene", length: 16.57, album_id: 4, group_id: 1},
  {name: "Levitation", length: 5.54, album_id: 5, group_id: 1},
  {name: "Sparks", length: 5.21, album_id: 5, group_id: 1},
  {name: "Space Song", length: 5.2, album_id: 5, group_id: 1},
  {name: "Beyond Love", length: 4.25, album_id: 5, group_id: 1},
  {name: "10:37", length: 3.48, album_id: 5, group_id: 1},
  {name: "PPP", length: 6.08, album_id: 5, group_id: 1},
  {name: "Wildflower", length: 3.39, album_id: 5, group_id: 1},
  {name: "Bluebird", length: 3.55, album_id: 5, group_id: 1},
  {name: "Days of Candy", length: 6.15, album_id: 5, group_id: 1},
  {name: "Majorette", length: 4.0, album_id: 6, group_id: 1},
  {name: "She's So Lovely", length: 4.22, album_id: 6, group_id: 1},
  {name: "All Your Yeahs", length: 3.48, album_id: 6, group_id: 1},
  {name: "One Thing", length: 5.35, album_id: 6, group_id: 1},
  {name: "Common Girl", length: 3.07, album_id: 6, group_id: 1},
  {name: "The Traveller", length: 4.03, album_id: 6, group_id: 1},
  {name: "Elegy to the Void", length: 6.29, album_id: 6, group_id: 1},
  {name: "Rough Song", length: 5.14, album_id: 6, group_id: 1},
  {name: "Somewhere Tonight", length: 4.13, album_id: 6, group_id: 1},
  {name: "Chariot", length: 5.16, album_id: 7, group_id: 1},
  {name: "Baby", length: 3.02, album_id: 7, group_id: 1},
  {name: "Equal Mind", length: 3.42, album_id: 7, group_id: 1},
  {name: "Used to Be (2008 Single Version)", length: 4.05, album_id: 7, group_id: 1},
  {name: "White Moon (iTunes Session Remix)", length: 4.07, album_id: 7, group_id: 1},
  {name: "Baseball Diamond", length: 4.36, album_id: 7, group_id: 1},
  {name: "Norway (iTunes Session Remix)", length: 3.16, album_id: 7, group_id: 1},
  {name: "Play the Game", length: 4.18, album_id: 7, group_id: 1},
  {name: "The Arrangement", length: 5.04, album_id: 7, group_id: 1},
  {name: "Saturn Song", length: 4.3, album_id: 7, group_id: 1},
  {name: "Rain in Numbers", length: 2.26, album_id: 7, group_id: 1},
  {name: "I Do Not Care for the Winter Sun", length: 3.11, album_id: 7, group_id: 1},
  {name: "10 Mile Stereo (Cough Syrup Remix)", length: 5.3, album_id: 7, group_id: 1},
  {name: "Wherever You Go", length: 3.26, album_id: 7, group_id: 1},
  {name: "Dark Spring", length: 3.24, album_id: 8, group_id: 1},
  {name: "Pay No Mind", length: 3.24, album_id: 8, group_id: 1},
  {name: "Lemon Glow", length: 4.04, album_id: 8, group_id: 1},
  {name: "L'Inconnue", length: 4.24, album_id: 8, group_id: 1},
  {name: "Drunk in LA", length: 3.59, album_id: 8, group_id: 1},
  {name: "Dive", length: 4.25, album_id: 8, group_id: 1},
  {name: "Black Car", length: 4.11, album_id: 8, group_id: 1},
  {name: "Lose Your Smile", length: 4.09, album_id: 8, group_id: 1},
  {name: "Woo", length: 4.14, album_id: 8, group_id: 1},
  {name: "Girl of the Year", length: 3.51, album_id: 8, group_id: 1},
  {name: "Last Ride", length: 6.59, album_id: 8, group_id: 1},
  {name: "Alien", length: 4.03, album_id: 8, group_id: 1}
])

#Labels
Label.create(name: "Carpark", location: "Washington, D.C.", group_id: 1)
Label.create(name: "Bella Union", location: "Longon, England", group_id: 1)
Label.create(name: "Sub Pop", location: "Seattle, Washington", group_id: 1)
Label.create(name: "Misletone", location: "Australia", group_id: 1)
Label.create(name: "Arts & Crafts Mexico", location: "Mexico", group_id: 1)

#Quotes
Quote.create(name: "bagel beat", source: "twitter", artist: Artist.find_by(name: "Victoria Legrand"))
Quote.create(name: "Burrito Martini", source: "twitter", artist: Artist.find_by(name: "Victoria Legrand"))
Quote.create(name: "thanks sirfartpoop", source: "reddit", artist: Artist.find_by(name: "Victoria Legrand"))
Quote.create(name: "GOLD SILVER SPACE HAIR WAVE EYELASH", source: "twitter", artist: Artist.find_by(name: "Victoria Legrand"))
Quote.create(name: "Love is the message", source: "twitter", artist: Artist.find_by(name: "Victoria Legrand"))
