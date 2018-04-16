class Itmediascraping
  def self.news_urls(link, id)
    agent = Mechanize.new
    #link = "https://forbesjapan.com/articles/detail/20590/1/1/1?s=ns"
    page = agent.get(link)
    title = page.at('.inner h1 big').inner_text
    image_url = page.at("#col600 a img")[0][:src] if page.at(".col600 a img")
    page_url = link
    news = Product.where(title: title).first_or_initialize
    news.title = title
    news.image_url = image_url
    news.page_url = page_url
    news.category_id = id
    news.site_name = "ITmedia ビジネスオンライン"
    news.save
  end
end
