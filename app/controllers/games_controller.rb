class GamesController < ApplicationController

    get '/games' do 
        if logged_in?
            unordered_games = []
            Game.all.each do |game|
                unordered_games << game.title
            end
            @games = unordered_games.sort
            erb :'games/show'
        else
            redirect '/'
        end
    end

    get '/games/:slug' do 
        if logged_in?
            @game = Game.find_by_slug(params[:slug])
            erb :'games/game'
        else
            redirect '/'
        end
    end

end