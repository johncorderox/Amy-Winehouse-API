Artist.create(name: "Amy Winehouse",
              date_of_birth: "September 14, 1983",
              date_of_death: "July 23, 2011",
              bio: "Much can be said about the late Amy Winehouse, one of the U.K.'s flagship vocalists during the 2000s. The British press and tabloids seemed to focus on her rowdy behavior, heavy consumption of alcohol, and tragic end, but fans and critics alike embraced her rugged charm, brash sense of humor, and distinctively soulful and jazzy vocals. Her platinum-selling breakthrough album, Frank (2003), elicited comparisons ranging from Billie Holiday and  Sarah Vaughan to Macy Gray and Lauryn Hill. Interestingly enough, despite her strong accent and vernacular, one can often hear aspects of each of those singers' vocal repertoires in Winehouse's own voice. Nonetheless, her allure had always been her songwriting -- almost always deeply personal but best known for its profanity and brutal candor.", cause_of_death: "Alcohol Poisoning", education: "Sylvia Young Theatre School", website: "https://www.amywinehouse.com/")
              .press_photo.attach(io: File.open("app/assets/images/press.png"), filename: "press.png")
Artist.first.signature.attach(io: File.open("app/assets/images/signature.png"), filename: "signature.png")
Artist.first.logo.attach(io: File.open("app/assets/images/logo.png"), filename: "logo.png")

Album.create(name: "Frank", release_date: "October 20, 2003", artist_id: 1).album_cover.attach(io: File.open("app/assets/images/frank.png"), filename: "frank.png")
Album.create(name: "Frank: Deluxe Edition", release_date: "May 12, 2008", artist_id: 1).album_cover.attach(io: File.open("app/assets/images/frank_deluxe.png"), filename: "frank_deluxe.png")
Album.create(name: "Back To Black", release_date: "October 27, 2006", artist_id: 1).album_cover.attach(io: File.open("app/assets/images/black.png"), filename: "black.png")
Album.create(name: "Lioness: Hidden Treasures", release_date: "December 2, 2011", artist_id: 1).album_cover.attach(io: File.open("app/assets/images/lioness.png"), filename: "lioness.png")
Album.create(name: "Amy (Original Motion Picture Soundtrack)", release_date: "October 30, 2015", artist_id: 1).album_cover.attach(io: File.open("app/assets/images/movie.png"), filename: "movie.png")
Album.create(name: "Amy, Live at the BBC", release_date: "November 12, 2012", artist_id: 1).album_cover.attach(io: File.open("app/assets/images/bbc.png"), filename: "bbc.png")
Album.create(name: "I Saw Mommy Kissing Santa Claus", release_date: "November 20, 2012", artist_id: 1).album_cover.attach(io: File.open("app/assets/images/mommy.png"), filename: "mommy.png")
Album.create(name: "Best Friend (Acoustic)", release_date: "October 20, 2003", artist_id: 1).album_cover.attach(io: File.open("app/assets/images/friends.png"), filename: "friends.png")
Album.create(name: "Rehab (Remixes & B Sides)", release_date: "November 7, 2006", artist_id: 1).album_cover.attach(io: File.open("app/assets/images/rehab.png"), filename: "rehab.png")


RecordLabel.create!([
  { name: "Universal Island Records Ltd.", album_id: 1 },
  { name: "Universal Island Records Ltd.", album_id: 2 },
  { name: "Universal Island Records Ltd.", album_id: 3 },
  { name: "Universal Island Records, a division of Universal Music Operations Limited.", album_id: 4 },
  { name: "Universal Island Records Ltd.", album_id: 5 },
  { name: "Universal Island Records Ltd.", album_id: 6 },
  { name: "Universal Island Records Ltd.", album_id: 7 },
  { name: "Universal Island Records Ltd.", album_id: 8 },
  { name: "Universal Island Records Ltd.", album_id: 9 }

])

Song.create!([
  { name: "Intro", length: 0.22, album_id: 1, artist_id: 1 },
  { name: "Stronger Than Me", length: 3.31, album_id: 1, artist_id: 1 },
  { name: "You Sent Me Flying", length: 5.18, album_id: 1, artist_id: 1 },
  { name: "Cherry", length: 1.32, album_id: 1, artist_id: 1 },
  { name: "Know You Now", length: 3.03, album_id: 1, artist_id: 1 },
  { name: "Fuck Me Pumps", length: 3.20, album_id: 1, artist_id: 1 },
  { name: "I Heard Love Is Blind", length: 2.10, album_id: 1, artist_id: 1 },
  { name: "Moody's Mood For Love", length: 2.49, album_id: 1, artist_id: 1 },
  { name: "Teo Licks", length: 0.39, album_id: 1, artist_id: 1 },
  { name: "(There Is) No Greater Love", length: 2.08, album_id: 1, artist_id: 1 },
  { name: "In My Bed", length: 5.17, album_id: 1, artist_id: 1 },
  { name: "Take The Box", length: 3.20, album_id: 1, artist_id: 1 },
  { name: "October Song", length: 3.25, album_id: 1, artist_id: 1 },
  { name: "What Is It About Men", length: 3.29, album_id: 1, artist_id: 1 },
  { name: "Amy Amy Amy", length: 4.14, album_id: 1, artist_id: 1 },
  { name: "Outro", length: 0.44, album_id: 1, artist_id: 1 },
  { name: "Brother", length: 4.13, album_id: 1, artist_id: 1 },
  { name: "Mr Magic (Through The Smoke)", length: 3.55, album_id: 1, artist_id: 1 },

  { name: "Take the Box (original demo)", length: 3.26, album_id: 2, artist_id: 1 },
  { name: "You Sent Me Flying (original demo) (UK edition only)", length: 5.40, album_id: 2, artist_id: 1 },
  { name: "I Heard Love Is Blind (original demo)", length: 2.13, album_id: 2, artist_id: 1 },
  { name: "Someone to Watch Over Me (original demo)", length: 4.29, album_id: 2, artist_id: 1 },
  { name: "What It Is (original demo)", length: 3.22, album_id: 2, artist_id: 1 },
  { name: "Round Midnight (B-side)", length: 3.49, album_id: 2, artist_id: 1 },
  { name: "Fool's Gold (B-side)", length: 3.40, album_id: 2, artist_id: 1 },
  { name: "Stronger Than Me (Later... with Jools Holland)", length: 3.53, album_id: 2, artist_id: 1 },
  { name: "I Heard Love Is Blind (live at The Concorde, Brighton)", length: 2.29, album_id: 2, artist_id: 1 },
  { name: "Take the Box (live at The Concorde, Brighton)", length: 3.33, album_id: 2, artist_id: 1 },
  { name: "In My Bed (live at The Concorde, Brighton)", length: 5.37, album_id: 2, artist_id: 1 },
  { name: "Mr Magic (Through the Smoke) (Janice Long Session)", length: 4.05, album_id: 2, artist_id: 1 },
  { name: "(There Is) No Greater Love (Janice Long Session)", length: 2.38, album_id: 2, artist_id: 1 },
  { name: "Fuck Me Pumps (MJ Cole Mix)", length: 5.54, album_id: 2, artist_id: 1 },
  { name: "Take the Box (Seiji's Buggin' Mix)", length: 7.48, album_id: 2, artist_id: 1 },
  { name: "Stronger Than Me (Harmonic 33 Mix)", length: 3.43, album_id: 2, artist_id: 1 },
  { name: "In My Bed (CJ Mix)", length: 4.36, album_id: 2, artist_id: 1 },

  { name: "Rehab", length: 3.34, album_id: 3, artist_id: 1 },
  { name: "You Know I'm No Good", length: 4.17, album_id: 3, artist_id: 1 },
  { name: "Me & Mr Jones", length: 2.33, album_id: 3, artist_id: 1 },
  { name: "Just Friends", length: 3.13, album_id: 3, artist_id: 1 },
  { name: "Back To Black", length: 4.01, album_id: 3, artist_id: 1 },
  { name: "Love Is A Losing Game", length: 2.35, album_id: 3, artist_id: 1 },
  { name: "Tears Dry On Their Own", length: 3.06, album_id: 3, artist_id: 1 },
  { name: "Wake Up Alone", length: 3.42, album_id: 3, artist_id: 1 },
  { name: "Some Unholy War", length: 2.22, album_id: 3, artist_id: 1 },
  { name: "He Can Only Hold Her", length: 2.46, album_id: 3, artist_id: 1 },
  { name: "Addicted", length: 2.45, album_id: 3, artist_id: 1 },

  { name: "Our Day Will Come", length: 2.49, album_id: 4, artist_id: 1 },
  { name: "Between The Cheats", length: 3.33, album_id: 4, artist_id: 1 },
  { name: "Tears Dry - Original Version", length: 4.08, album_id: 4, artist_id: 1 },
  { name: "Will You Still Love Me Tomorrow? - 2011", length: 4.22, album_id: 4, artist_id: 1 },
  { name: "Like Smoke", length: 4.38, album_id: 4, artist_id: 1 },
  { name: "Valerie - '68 Version", length: 3.59, album_id: 4, artist_id: 1 },
  { name: "The Girl From Ipanema", length: 2.46, album_id: 4, artist_id: 1 },
  { name: "Half Time", length: 3.50, album_id: 4, artist_id: 1 },
  { name: "Wake Up Alone - Original Recording", length: 4.24, album_id: 4, artist_id: 1 },
  { name: "Best Friends, Right?", length: 2.56, album_id: 4, artist_id: 1 },
  { name: "Body And Soul", length: 3.18, album_id: 4, artist_id: 1 },
  { name: "A Song For You", length: 4.29, album_id: 4, artist_id: 1 }
])

Quote.create!([
  { quote: "I don't think your ability to fight has anything to do with how big you are. It's to do with how much anger is in you.", artist_id: 1 },
  { quote: "Life's short. Anything could happen, and it usually does, so there is no point in sitting around thinking about all the ifs, ands and buts.", artist_id: 1 },
  { quote: "I always wrote poetry and stuff like that, so putting songs together wasn't that spectacular.", artist_id: 1 },
  { quote: "The jazz I love is sweet and pure with raw elements, which is exactly what the good hip-hop is doing now.", artist_id: 1 },
  { quote: "I'm romantic. I fall in love every day. Not with people but with situations. The other day, I saw a tramp polishing his shoes. That just gripped my heart.", artist_id: 1 },
  { quote: "Here in England, everyone's a pop star, innit, whereas in America they believe in the term artist.", artist_id: 1 },
  { quote: "If I died tomorrow, I'd be a happy girl.", artist_id: 1 },
  { quote: "Girls talk to each other like men talk to each other. But girls have an eye for detail.", artist_id: 1 },
  { quote: "I didn't think it was special to be able to sing.", artist_id: 1 },
  { quote: "I'm not a natural born performer.", artist_id: 1 }
])
