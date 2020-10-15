class PostsController < ApplicationController
  
<<<<<<< HEAD
  before_action :authenticate_member!, except: [:new, :create]
=======
   before_action :authenticate_member!, only: [:new, :create]
>>>>>>> cc221efadb94611284ffcec277000215b1c71860
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
<<<<<<< HEAD
    #@post = current_member.posts.new(post_params)
  @post = Post.new(post_params)

=======

    @post = current_member.posts.build(post_params)
>>>>>>> cc221efadb94611284ffcec277000215b1c71860

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
