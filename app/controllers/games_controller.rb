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

    post '/games' do 
        @user = current_user

        if !params[:game_title].empty?
            @game = Game.create(title: params[:game_title])
            if params[:achievement_title] != "" && params[:achievement_description] != ""
                achievement = Achievement.create(name: params[:achievement_name], description: params[:achievement_description])
                @game.achievements << achievement
                @user.games << @game
                @user.achievements << achievement
            else
                redirect "/users/#{@user.slug}"
            end
            redirect "/users/#{@user.slug}"
        else
            redirect '/games/new'
        end
    end

    get '/games/new' do
        erb :'games/new'
    end

    get '/games/:slug' do 
        if logged_in?
            @game = Game.find_by_slug(params[:slug])
            erb :'games/game'
        else
            redirect '/'
        end
    end

    get '/games/:slug/edit' do 
        if logged_in?
            @game = Game.find_by_slug(params[:slug])
            erb :'games/edit'
        else
            redirect '/'
        end
    end

    patch '/games/:slug' do 
        @game = Game.find_by_slug(params[:slug])
        if params[:game_title] != ""
            @game.update(title: params[:game_title])
            @game.save
            redirect "/games/#{@game.slug}"
        else
            redirect "/games/#{@game.slug}/edit"
        end
    end

end