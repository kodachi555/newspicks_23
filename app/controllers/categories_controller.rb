class CategoriesController < ApplicationController

  before_action :following_picks, if :authenticate_user?

  def show
    @category = Category.find(params[:id])
    @products = @category.products.all.order("id DESC")
    @newproducts = Product.order("id DESC").limit(10)
    @popu_picks = Pick.order("id DESC").limit(10)
  end

  private
  def following_picks
    unless current_user == nil
      @following_picks = Pick.where(user_id: current_user.following_ids).order("id DESC")
    end
  end
  end
end
