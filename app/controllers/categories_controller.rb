class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

  def index
    @categories = Category.all
  end

  def show
  end

 private
    def set_category
      @category = Category.find(params[:id])
      @title = @category.name
      @posts = @category.posts
    end

    def category_params
      params.require(:category).permit(:name)
    end
end
