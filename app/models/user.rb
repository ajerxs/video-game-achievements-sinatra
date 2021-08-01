class User < ActiveRecord::Base
    has_many :user_achievements
    has_many :user_games
    has_many :achievements, through: :user_achievements
    has_many :games, through: :user_games
    has_secure_password
end