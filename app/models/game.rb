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

    def self.find_by_slug(slug)
        if slug.split('-').count >= 2
            @slug = slug
            self.findable_slug
            @found = self.where("title LIKE ?", @findable)[0]
        else
            @found = self.where("title LIKE ?", slug)[0]
        end
    end

end