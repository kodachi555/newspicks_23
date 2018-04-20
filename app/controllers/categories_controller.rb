class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @products = @category.products.all.order("id DESC")
    @newproducts = Product.order("id DESC")
  end
end
