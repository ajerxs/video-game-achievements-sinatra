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
        if logged_in?
            erb :'posts/new'
        else
            redirect '/'
        end
    end

    get '/posts/:id' do 
        if logged_in?
            @post = Post.find_by_id(params[:id])
            erb :'posts/post'
        else
            redirect '/'
        end
    end

    get '/posts/:id/edit' do
        @post = Post.find_by_id(params[:id])
        if logged_in? && @post.user_id == current_user.id
            erb :'posts/edit'
        else
            redirect "/posts/#{@post.id}"
        end
    end

    patch '/posts/:id' do 
        @post = Post.find_by_id(params[:id])
        @post.update(message: params[:post_message])
        @post.save
        redirect "/posts/#{@post.id}"
    end

    post '/posts/:id/delete' do 
        @post = Post.find_by_id(params[:id])
        @user = current_user
        if logged_in? && @post.user_id == @user.id
            @post.delete
            redirect '/posts'
        else
            redirect "/posts/#{@post.id}"
        end
    end

end