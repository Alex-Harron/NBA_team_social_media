require './config/environment'

class ApplicationController < Sinatra::Base

  configure do 
    set :views, 'app/views'
    enable :sessions 
    set :session_secret, "secret"
    register Sinatra::Flash
  end 

  get '/' do 
  erb :index
  end 


  helpers do 
    def current_user  
      @current_user ||= User.find_by_id(session[:user_id])
    end 

    def logged_in?
      !!current_user
    end

    def get_post 
      @post = Post.find_by(id:params[:id])
    end 

    def redirect_if_not_authorized
      if logged_in? && @post != current_user.posts.find_by(id: params[:id])
        redirect '/posts'
      end 
    end 

    def redirect_if_not_logged_in
      if !logged_in?
        redirect '/'
      end
    end
  end 
end