class PagesController < ApplicationController
  def home; end

  def blog
    @posts = Post.all.reverse
  end

  def newsletter; end
end
