class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to @post
    else
      render 'new'
      end
    #@post.save
    #redirect_to @post #action: :show, id: @post.id
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

=begin
        private
    def post_params
      params.require(:post).permit(:title, :text)
    end
=end
  #ff
end

