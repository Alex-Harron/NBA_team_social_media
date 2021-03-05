class PostsController < ApplicationController

  get '/posts' do 
      @posts = Post.all.order(timestamp: :asc)
      erb :'posts/index'
  end

  get '/posts/new' do 
      @params = params
      erb :'posts/create_post'
  end 

  get '/posts/:id' do
    @post = Post.includes(:user).find_by_id(params[:id])
    get_post
    erb :'posts/show'
  end 

  post '/posts' do 
    @post = Post.new(params)
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
end

