class NewsController < ApplicationController

  def index
    @products = Product.all
  end
  def show
    @product = Products.find(params[:id])
  end
end
