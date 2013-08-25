class PostsController < ApplicationController

  def new
  end

  def create
    @post = Post.new(params[:post])
    @post.save
    redirect_to @post #action: :show, id: @post.id
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

