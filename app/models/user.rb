require_relative 'concerns/slugify'

class User < ActiveRecord::Base
    extend Slugify::ClassMethods

    has_many :user_achievements
    has_many :user_games
    has_many :achievements, through: :user_achievements
    has_many :games, through: :user_games
    has_secure_password

    def slug
        the_name = self.username
        slug = the_name.downcase.gsub(' ', '-').gsub(/[^\w-]/, '')
    end
end