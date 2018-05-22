class NewsController < ApplicationController
  # before_action :authenticate_user!
  before_action :following_picks, if :authenticate_user?

  def show
    @product = Product.find(params[:id])
    @picks = @product.picks
    @popu_picks = Pick.order("id DESC").limit(10)
  end

  def index
    @header_left_news = Product.order("id DESC").limit(7)
    header_product_ids = Pick.group(:product_id).order('count_product_id DESC').limit(2).count(:product_id).keys
    @header_right_news = header_product_ids.map{|id| Product.find(id)}
    @main_news = Product.order("id DESC").limit(7)
    @origin_news = Product.where("category_id = '11'").order("id DESC").limit(3)
    @latest_news = Product.order("id DESC").limit(7)
    @futured_news = Product.where("category_id = '10'").order("id DESC").limit(3)
    @tech_news = Product.where("category_id = '1'").order("id DESC").limit(3)
    @biz_news = Product.where("category_id = '2'").order("id DESC").limit(3)
    @pol_news = Product.where("category_id = '3'").order("id DESC").limit(3)
    @fin_news = Product.where("category_id = '4'").order("id DESC").limit(3)
    @carrior_news = Product.where("category_id = '5'").order("id DESC").limit(3)
    @sports_news = Product.where("category_id = '6'").order("id DESC").limit(3)
    @joboff_news = Product.where("category_id = '7'").order("id DESC").limit(3)
    @ana_news = Product.where("category_id = '8'").order("id DESC").limit(3)
    @pick_rank = Pick.order("likes_count DESC").limit(4)
    product_ids = Pick.group(:product_id).order('count_product_id DESC').limit(3).count(:product_id).keys
    @popu_news = product_ids.map{|id| Product.find(id)}
    user_ids = Pick.group(:user_id).limit(4).order("sum_likes_count DESC").sum(:likes_count).keys
    @popu_users = user_ids.map{|id| User.find(id)}
    @popu_picks = Pick.order("id DESC").limit(10)
  end

  def search
    @products = Product.where('title LIKE(?)', "%#{params[:keyword]}%")
    @users = User.where('username LIKE(?)', "%#{params[:keyword]}")
    @picks = Pick.where('text LIKE(?)', "%#{params[:keyword]}")
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
