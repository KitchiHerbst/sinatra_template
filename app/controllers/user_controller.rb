class UsersController < ApplicationController

    set :method_override, true
    set :views, "app/views/user" #set base point for views

    get '/users' do 
        #displays all the users
        @users = User.all 
        erb :index 
    end

    post '/users' do 
        redirect '/create'
    end

    get '/create' do 
        erb :create
    end

    post '/create' do 
        @user = User.create(name: params["user_name"], age: params["user_age"])
        redirect '/users'
    end

    get '/users/:id' do 
        @user = User.find(params[:id])
        @shows= @user.shows 
        erb :show
    end

    delete '/users/:id' do 
        @user = User.find(params[:id])
        @user.destroy
        redirect "/users"
    end

    post '/users/:id/edit' do 
        #binding.pry
        @user = User.find(params[:id])
        erb :edit
    end

    patch '/users/:id' do 
        #binding.pry
        @user = User.find(params[:id])
        @user.update(name: params["user_name"],  age: params["user_age"])
        redirect '/users'
    end

    

end