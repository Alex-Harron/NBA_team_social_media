require_relative '../config/environment'

User.create(username: "Big_Balla", email: "BB@gmail.com", password: "1234", img_url:'https://logos-download.com/wp-content/uploads/2016/04/LA_Clippers_logo_logotype_emblem.png')
User.create(username: "Clips_Fan", email: "Clips@gmail.com", password: "1234", img_url:'https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/6450.png')
User.create(username: "Kawhi's_Hands", email: "BigHands@gmail.com", password: "1234", img_url:'https://i.pinimg.com/originals/52/37/c5/5237c564b9daa40b2ad3b953de84a113.jpg')
User.create(username: "Doc_Rivers", email: "DocRivers@gmial.com", password: "1234", img_url:'https://i.pinimg.com/originals/d6/51/af/d651af2834ef44dbc2f8c43433c6b4a9.jpg')

Post.create(title: "New year, new coach. This team is ballin!", content: Faker::Lorem.paragraph_by_chars, timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: User.all.sample.id)
Post.create(title: "Kawhi is killing it this year!!!", content: Faker::Lorem.paragraph_by_chars, timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: User.all.sample.id)
Post.create(title: "We are winning the championship for sure this year. CLIP NATION!", content:Faker::Lorem.paragraph_by_chars, timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: User.all.sample.id)
Post.create(title: "This team really needs a reliable center.", content: Faker::Lorem.paragraph_by_chars, timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: User.all.sample.id)
Post.create(title: "What is the update on Lou Will's injury?", content: Faker::Lorem.paragraph_by_chars, timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: User.all.sample.id)
Post.create(title: "What a great game! Too bad we lost tho, WE WILL BE BACK!!", content:Faker::Lorem.paragraph_by_chars , timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: User.all.sample.id)
Post.create(title: "Is Lebron even Human?", content: Faker::Lorem.paragraph_by_chars, timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: User.all.sample.id)
Post.create(title: "I was looking for PG all night, but he never showed!", content: Faker::Lorem.paragraph_by_chars, timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: User.all.sample.id)
Post.create(title: "Joker was a beast tonight!! We got lucky with that W.", content: Faker::Lorem.paragraph_by_chars, timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now),  user_id: User.all.sample.id)
Post.create(title: "That man is a god on Defense.", content: Faker::Lorem.paragraph_by_chars, timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: User.all.sample.id)
Post.create(title:  "What do ya'll think our chances at a chip this year are?", content:Faker::Lorem.paragraph_by_chars, timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: User.all.sample.id)
