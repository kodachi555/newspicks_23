class NewsController < ApplicationController
  def show
    @news = News.find(params[:id])
  end

  def index
    @main_news = News.order("id DESC").limit(7)
    @origin_news = News.where("category_id = '1'").order("id DESC").limit(3)
    @latest_news = News.order("id DESC").limit(7)
    @futured_news = News.where("category_id = '2'").order("id DESC").limit(3)
    @tech_news = News.where("category_id = '3'").order("id DESC").limit(3)
    @biz_news = News.where("category_id = '4'").order("id DESC").limit(3)
    @pol_news = News.where("category_id = '5'").order("id DESC").limit(3)
    @fin_news = News.where("category_id = '6'").order("id DESC").limit(3)
    @carrior_news = News.where("category_id = '7'").order("id DESC").limit(3)
    @sports_news = News.where("category_id = '8'").order("id DESC").limit(3)
    @joboff_news = News.where("category_id = '10'").order("id DESC").limit(3)
    @ana_news = News.where("category_id = '11'").order("id DESC").limit(3)
  end

  def search
  end
end
