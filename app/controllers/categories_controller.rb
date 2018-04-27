class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @categories = Category.all.pluck(:name)
  end
end
