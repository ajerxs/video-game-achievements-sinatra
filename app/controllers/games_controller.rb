class GamesController < ApplicationController

    get '/games' do 
        unordered_games = []
        Game.all.each do |game|
            unordered_games << game.title
        end
        @games = unordered_games.sort
        erb :'games/show'
    end

    get '/games/:slug' do 
        @game = Game.find_by_slug(params[:slug])
        erb :'games/game'
    end

end