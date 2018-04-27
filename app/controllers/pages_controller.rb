class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home blog newsletter]

  def home; end

  def blog
    @posts = Post.all.reverse
  end

  def newsletter; end
end
