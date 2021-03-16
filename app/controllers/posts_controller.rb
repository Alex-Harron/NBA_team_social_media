class PostsController < ApplicationController

  get '/posts' do 
    if logged_in?
      @posts = Post.all.order(timestamp: :asc)
      erb :'posts/index'
    else 
      redirect_if_not_logged_in
    end
  end

  get '/posts/new' do 
    if logged_in?
      erb :'posts/create_post'
    else
      redirect_if_not_logged_in
    end
  end 

  get '/posts/:id' do
    if logged_in?
      @post = Post.find_by_id(params[:id])
      get_post
      erb :'posts/show'
    else 
      redirect_if_not_logged_in
    end
  end 

  post '/posts' do 
    @post = Post.new(params)
    if @post.title.blank? || @post.content.blank?
      flash[:message] = "Error: Please fill out all fields to continue"
      flash[:alert_type] = "warning"
      redirect '/posts/new'
    else
      @post.user_id = session[:user_id]
      @post.save
      redirect "/posts/#{@post.id}" 
    end
  end 

  get '/posts/:id/edit' do
    if logged_in?
      get_post
      redirect_if_not_authorized
      erb :"/posts/edit_post"
    else
      redirect_if_not_logged_in
    end
  end 

  patch '/posts/:id' do 
      get_post
      redirect_if_not_authorized
      @post.update(title: params[:title], content: params[:content])
      if @post.title.blank? || @post.content.blank?
        flash[:message] = "Error: Please fill out all fields to continue"
        flash[:alert_type] = "warning"
        redirect "/posts/#{@post.id}/edit"
      else
      redirect "/posts/#{@post.id}" 
    end
  end 


  delete '/posts/:id' do 
      get_post
      @post.destroy
      redirect '/posts'
  end 
end

