require 'faker'

user = User.create(username: "user1", email: "user@example.com", password: "user123")

Game.create(title: "Minecraft")
Game.create(title: "Overwatch")
Game.create(title: "Destiny 2")

Achievement.create(name: "Monster Hunter", description: "Attack and destroy a monster.", game_id: 1)
Achievement.create(name: "Cow Tipper", description: "Harvest some leather.", game_id: 1)
Achievement.create(name: "The End", description: "Kill the Enderdragon.", game_id: 1)
Achievement.create(name: "Survival Expert", description: "Use health packs to heal 900 health in a single life in Quick or Competitive Play.", game_id: 2)
Achievement.create(name: "Die Die Die... Die", description: "Kill 4 enemies with a single use of Reaper's Death Blossom in Quick or Competitive Play.", game_id: 2)
Achievement.create(name: "Lockdown", description: "Win a Capture map on defense without losing the first objective in Quick or Competitive Play.", game_id: 2)
Achievement.create(name: "Heart of Darkness", description: "Complete a Nightfall strike.", game_id: 3)
Achievement.create(name: "Belly of the Beast", description: "Complete the Leviathan raid.", game_id: 3)
Achievement.create(name: "Lest Ye Be Judged", description: "Encounter an Agent of the Nine somewhere in the system.", game_id: 3)

user.games << Game.find_by_id(1)
user.games << Game.find_by_id(2)
user.achievements << Achievement.find_by_id(1)
user.achievements << Achievement.find_by_id(2)
user.achievements << Achievement.find_by_id(4)
user.achievements << Achievement.find_by_id(6)

Post.create(message: "Thi is my first post", user_id: 1)
Post.create(message: "This is another post", user_id: 1)
Post.create(message: "Another thing that I post", user_id: 1)