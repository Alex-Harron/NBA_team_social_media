class UsersController < ApplicationController
    get '/users/:slug' do
        @user = User.find_by_slug(params[:slug])
        erb :'users/show'
    end

    get '/login' do
        if !logged_in?
        erb :'users/login'
        else
        redirect to '/homepage'
        end
     end

    post '/login' do
        user = User.find_by(:username => params[:username])
        if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect to "/homepage"
        else
        redirect to '/signup'
        end
    end

    get '/logout' do
        if logged_in?
        session.destroy
        redirect to '/'
        else
        redirect to '/'
        end
    end
end
