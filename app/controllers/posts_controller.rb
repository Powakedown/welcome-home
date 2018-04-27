class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @posts = Post.all.reverse
  end

  def new
    @post = Post.new
    @categories = Category.all.map { |cat| cat.name }
  end

  def create
    @post = Post.new(post_params)
    @post.category = Category.find_by(name: params[:post][:category])
    if @post.save
      redirect_to posts_path, notice: "Nouvel article crée!" and return
    else
      raise
      flash[:warning] = "Échec de création"
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :category)
  end
end
