class ShowsController < ApplicationController

    set :method_override, true
    set :views, "app/views/shows" #set base point for views

    get '/show/new' do 
        @users = User.all
        erb :new
    end

    post '/show/new' do 
        #binding.pry
        @show = Show.create(params)
        redirect '/users'
    end

    get '/show/:user_id' do 
        #binding.pry
        @user = User.find(params["user_id"])
        @shows = @user.shows
        erb :index
    end

    delete 'show/:id' do    
        
    end










end