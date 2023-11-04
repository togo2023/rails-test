class PostsController < ApplicationController
  def index
    @posts = Post.all
    @date = Date.current.strftime("%Y/%m/%d")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:title,:start_day,:end_day,:day_all,:content))
    if @post.save
      redirect_to "/"
    else
      render "new"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/"
  end
end


