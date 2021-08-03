class AchievementsController < ApplicationController

    get '/achievements' do
        @achievements = Achievement.all
        erb :'achievements/show'
    end

    get '/achievements/:id' do 
        @achievement = Achievement.find_by_id(params[:id])
        erb :'achievements/achievement'
    end

end