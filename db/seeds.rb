require 'faker'

user = User.create(username: "user1", email: "user@example.com", password: "user123")

Game.create(title: Faker::Game.title)
Game.create(title: Faker::Game.title)
Game.create(title: Faker::Game.title)

Achievement.create(name: "First Game's 1st Achievement", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper malesuada proin libero nunc consequat interdum.", game_id: 1)
Achievement.create(name: "First Game's 2nd Achievement", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dignissim enim sit amet venenatis urna.", game_id: 1)
Achievement.create(name: "First Game's 3rd Achievement", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lectus magna fringilla urna porttitor rhoncus dolor purus.", game_id: 1)
Achievement.create(name: "Second Game's 1st Achievement", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In hendrerit gravida rutrum quisque non tellus.", game_id: 2)
Achievement.create(name: "Second Game's 2nd Achievement", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In aliquam sem fringilla ut morbi tincidunt augue.", game_id: 2)
Achievement.create(name: "Second Game's 3rd Achievement", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Molestie ac feugiat sed lectus vestibulum.", game_id: 2)
Achievement.create(name: "Third Game's 1st Achievement", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tortor pretium viverra suspendisse potenti nullam ac tortor.", game_id: 3)
Achievement.create(name: "Third Game's 2nd Achievement", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Est ante in nibh mauris cursus mattis molestie a.", game_id: 3)
Achievement.create(name: "Third Game's 3rd Achievement", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut tortor pretium viverra suspendisse potenti nullam ac tortor vitae.", game_id: 3)

user.games << Game.find_by_id(1)
user.games << Game.find_by_id(2)
user.achievements << Achievement.find_by_id(1)
user.achievements << Achievement.find_by_id(2)
user.achievements << Achievement.find_by_id(4)
user.achievements << Achievement.find_by_id(6)

Post.create(message: "Thi is my first post", user_id: 1)
Post.create(message: "This is another post", user_id: 1)
Post.create(message: "Another thing that I post", user_id: 1)