require_relative '../config/environment'

User.create(username: "Big_Balla", email: "BB@gmail.com", password: "1234")
User.create(username: "Clips_Fan", email: "Clips@gmail.com", password: "1234")
User.create(username: "Kawhi's_Hands", email: "BigHands@gmail.com", password: "1234")
User.create(username: "Doc_Rivers", email: "DocRivers@gmial.com", password: "1234")

Post.create(title: "New Coach", content: "New year, new coach. This team is ballin!", timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: 1)
Post.create(title: "Kawhi", content: "Kawhi is killing it this year!!!", timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: 2)
Post.create(title: "Team", content: "We are winning the championship for sure this year. CLIP NATION!", timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: 3)
Post.create(title: "Positions", content: "This team really needs a reliable center, if they ever want to win.", timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: 1)
Post.create(title: "Injury", content: "What is the update on Lou Will's injury?", user_id: 4)
Post.create(title: "Lakers", content: "What a great game! Too bad we lost tho, WE WILL BE BACK!!", timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: 3)
Post.create(title: "Lebron", content: "Is Lebron even Human?", timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: 2)
Post.create(title: "Where was PG", content: "I was looking for PG all night, but he never showed! This team needs more from him.", timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: 4)
Post.create(title: "Nuggets", content: "Joker was a beast tonight!! We got lucky with that W.",timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now),  user_id: 1)
Post.create(title: "Patrick Beverly", content: "That man is a god on Defense.", timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: 3)
Post.create(title: "Our chances this year?", content: "What do ya'll think our chances at a chip this year are?", timestamp: Faker::Time.between(from: DateTime.now - 365, to: DateTime.now), user_id: 4)
