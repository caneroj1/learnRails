class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post].permit(:title, :text))
    
    if @post.save then
      redirect_to @post
    else
      render "new"
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def index
    @posts = Post.all
  end
end
