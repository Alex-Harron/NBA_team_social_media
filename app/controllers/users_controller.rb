class UsersController < ApplicationController
   
  get '/signup' do
    erb :"users/create_user"
  end 

    post '/signup' do
      user = User.find_by_username(params[:username])
      user_email = User.find_by_email(params[:email])
      user_new = User.new(params)
      if user_new.username.blank? || user_new.email.blank? || user_new.password.blank? 
        flash[:message] = "Error: Please fill out all fields to continue"
        flash[:alert_type] = "warning"
        redirect '/signup'
      
      elsif user || user_email
        flash[:message] = "Error: Username or Email is already registered."
            flash[:alert_type] = "danger"
            redirect '/signup'
      else 
        user_new.save
        session[:user_id] = user_new.id
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
        flash[:message] = "Invalid login"
        redirect '/login'
    end 
  end 

  get '/logout' do
    session.clear
    redirect '/'
    erb :'users/logout'
  end 
end 