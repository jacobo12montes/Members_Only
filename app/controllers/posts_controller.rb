class PostsController < ApplicationController
  
  #before_action :authenticate_member!, except: [:new, :create]
   before_action :authenticate_member!, only: [:new, :create]
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    #@post = current_member.posts.new(post_params)
  #@post = Post.new(post_params)


    @post = current_member.posts.build(post_params)

    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end


  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
