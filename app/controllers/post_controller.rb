class PostController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def show
    @post = Post.find(params[:id])
  end

  def new
  end
  
  def create
    post = Post.create(user_id: current_user.id, title: params[:title], img: params[:img], content: params[:content])
    redirect_to "/post/show/#{post.id}"
  end

  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    post = Post.find(params[:id])
    post.title = params[:title]
    post.img = params[:img]
    post.content = params[:content]
    post.save
    redirect_to "/post/show/#{post.id}"
  end
  
  def delete
    post = Post.find(params[:id])
    post.destroy
    redirect_to '/'
  end
end
