class UsersController < ApplicationController

    get '/users/:slug' do 
        @user = current_user
        erb :'users/show'
    end

end