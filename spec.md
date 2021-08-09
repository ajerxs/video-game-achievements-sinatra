# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
    - Is a Sinatra-based app
- [x] Use ActiveRecord for storing information in a database
    - Stores information about User, Game, and Achievement models through migrations in ActiveRecord (There are two join tables in UserGame and UserAchievement).
- [x] Include more than one model class (e.g. User, Post, Category)
    - User, Post, Achievement, UserGame, UserAchievement
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
    - User has three has-many relationships and two has_many through relationships (Game and Achievement models also fulfill this).
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
    - Achievement belongs_to games, two join tables also do this.
- [x] Include user accounts with unique login attribute (username or email)
    - The homepage of the app allows a login with username.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
    - Games, Achievements, and Posts each has this functionality.
- [x] Ensure that users can't modify content created by other users
    - This is fulfilled by posts.
- [x] Include user input validations
    - Cannot navigate pages without being logged in.
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
