class PagesController < ApplicationController
  def home; end

  def blog
    @posts = Post.all
  end
end
