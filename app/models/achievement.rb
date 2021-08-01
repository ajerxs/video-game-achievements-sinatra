class Achievement < ActiveRecord::Base
    belongs_to :game
    has_many :user_achievements
    has_many :users, through: :user_achievements
end