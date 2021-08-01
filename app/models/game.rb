require_relative 'concerns/slugify'

class Game < ActiveRecord::Base
    extend Slugify::ClassMethods

    has_many :achievements
    has_many :user_games
    has_many :users, through: :user_games

    def slug
        the_name = self.title
        slug = the_name.downcase.gsub(' ', '-').gsub(/[^\w-]/, '')
    end
end