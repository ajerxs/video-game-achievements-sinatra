class AchievementsController < ApplicationController

    get '/achievements' do
        unsorted_achievement_names = []
        @achievements = []
        Achievement.all.each do |achievement|
            unsorted_achievement_names << achievement.name
        end
        sorted_achievement_names = unsorted_achievement_names.sort
        sorted_achievement_names.each do |achievement|
            @achievements << Achievement.find_by(name: achievement)
        end
        erb :'achievements/show'
    end

    get '/achievements/new' do 
        @games = Game.all
        erb :'achievements/new'
    end

    post '/achievements' do
        @user = current_user

        if params[:game][:id] != ""
            @game = Game.find_by_id(params[:game][:id])
        elsif params[:game_title] != ""
            @game = Game.create(title: params[:game_title])
        else
            redirect '/achievements/new'
        end
        

        if params[:achievement_name] != "" && params[:achievement_description] != "" && @game
            @achievement = Achievement.create(name: params[:achievement_name], description: params[:achievement_description])
            @game.achievements << @achievement
            @user.achievements << @achievement
            redirect '/achievements'
        else
            redirect '/achievements/new'
        end
    end

    get '/achievements/:id' do 
        @achievement = Achievement.find_by_id(params[:id])
        erb :'achievements/achievement'
    end

    get '/achievements/:id/edit' do
        @achievement = Achievement.find_by_id(params[:id])
        erb :'achievements/edit'
    end

    patch '/achievements/:id' do
        @achievement = Achievement.find_by_id(params[:id])
        if params[:achievement_name] != "" && params[:achievement_description] != ""
            @achievement.update(name: params[:achievement_name], description: params[:achievement_description])
            @achievement.save
            redirect "/achievements/#{@achievement.id}"
        else
            redirect "/achievements/#{@achievement.id}/edit"
        end
    end

    post '/achievements/:id/delete' do
        @achievement = Achievement.find_by_id(params[:id])
        @achievement.delete
        redirect '/achievements'
    end

end