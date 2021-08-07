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
        @user = current_user
        @post = Post.create(message: params[:post_message], user_id: @user.id)
        redirect '/posts'
    end

    get '/posts/new' do 
        erb :'posts/new'
    end

    get '/posts/:id' do 
        @post = Post.find_by_id(params[:id])
        erb :'posts/post'
    end

    get '/posts/:id/edit' do
        @post = Post.find_by_id(params[:id])
        erb :'posts/edit'
    end

    patch '/posts/:id' do 
        @post = Post.find_by_id(params[:id])
        @post.update(message: params[:post_message])
        @post.save
        redirect "/posts/#{@post.id}"
    end

    post '/posts/:id/delete' do 
        @post = Post.find_by_id(params[:id])
        @post.delete
        redirect '/posts'
    end

end