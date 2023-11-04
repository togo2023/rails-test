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
      flash[:notice] = "スケジュールを追加しました"
      redirect_to "/"
    else
      render "new"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params.require(:post).permit(:title, :start_day, :end_day, :day_all, :content))
      flash[:notice] = "スケジュールを更新しました"
      redirect_to "/"
    else
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] ="スケジュールを削除しました"
    redirect_to "/"
  end
end


