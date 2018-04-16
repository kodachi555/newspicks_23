class NewsController < ApplicationController
<<<<<<< HEAD
  def show
    @news = Products.find(params[:id])
  end

  def index
    @main_news = Products.order("id DESC").limit(7)
    @origin_news = Products.where("category_id = '1'").order("id DESC").limit(3)
    @latest_news = Products.order("id DESC").limit(7)
    @futured_news = Products.where("category_id = '2'").order("id DESC").limit(3)
    @tech_news = Products.where("category_id = '3'").order("id DESC").limit(3)
    @biz_news = Products.where("category_id = '4'").order("id DESC").limit(3)
    @pol_news = Products.where("category_id = '5'").order("id DESC").limit(3)
    @fin_news = Products.where("category_id = '6'").order("id DESC").limit(3)
    @carrior_news = Products.where("category_id = '7'").order("id DESC").limit(3)
    @sports_news = Products.where("category_id = '8'").order("id DESC").limit(3)
    @joboff_news = Products.where("category_id = '10'").order("id DESC").limit(3)
    @ana_news = Products.where("category_id = '11'").order("id DESC").limit(3)
  end

  def search
  end
end
