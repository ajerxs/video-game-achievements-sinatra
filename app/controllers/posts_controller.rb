class PostsController < ApplicationController

    get '/posts' do
        if logged_in?
            @posts = Post.all
            erb :'posts/show'
        else
            redirect '/'
        end
    end

    post '/posts' do

    end

    get '/posts/new' do 
        erb :'posts/new'
    end

end