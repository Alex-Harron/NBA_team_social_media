class UsersController < ApplicationController
   
  get '/signup' do
    erb :"users/create_user"
  end 

    post '/signup' do
      @user = User.new(params)
      if @user.save
        session[:user_id] = @user.id
        redirect to "/posts"
      else 
        @user.save
        session[:user_id] = user.id
        redirect '/posts'
      end 
    end 

  get '/login' do
    erb :"users/login"
  end 

  post '/login' do
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect '/posts'
    else
        flash[:error] = "Invalid login"
        redirect '/login'
    end 
  end 

  get '/logout' do
    session.clear
    redirect '/'
    erb :'users/logout'
  end 
end 