class PostsController < ApplicationController

  get '/posts' do 
      @posts = Post.all
      erb :'posts/index'
  end

  get '/posts/new' do 
      erb :'posts/create_post'
  end 

  get '/posts/:id' do 
    get_post
    erb :'posts/show'
  end 

  post '/posts' do 
    @post = Post.new(title: params[:title], content: params[:content])
    @post.user_id = session[:user_id]
    @post.save
    redirect "/posts/#{@post.id}" 
  end 

  get '/posts/:id/edit' do 
      get_post

      redirect_if_not_authorized
      erb :"/posts/edit_post"
  end 

  patch '/posts/:id' do 
      get_post
      redirect_if_not_authorized
      @post.update(title: params[:title], content: params[:content])
      redirect "/posts/#{@post.id}" 
  end 


  delete '/posts/:id' do 
      get_post
      @post.destroy
      redirect '/posts'
  end 

private 

  def get_post 
      @post = Post.find_by(id:params[:id])
  end 

  def redirect_if_not_authorized
      if logged_in? && @post != current_user.posts.find_by(id: params[:id])
          flash[:error] = "You cant make this edit, you don't own this"
          redirect '/posts'
      end 

  end 
end

