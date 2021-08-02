class AchievementsController < ApplicationController

    get '/achievements' do
        @achievements = Achievement.all
        erb :'achievements/show'
    end
    
end