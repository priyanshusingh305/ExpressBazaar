class CategoriesController < ApplicationController
  def show
    @category =Category.find(params[:id])
    @product= @category.products.all
  end
end
