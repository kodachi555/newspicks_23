class Diamondscraping
  def self.news_urls(link, id)
    agent = Mechanize.new
    page = agent.get(link)
    title = page.at('.article-title').inner_text
    image_url = page.at('.figure-center img')[:src] if page.at('.figure-center img')
    page_url = link
    news = Product.where(title: title).first_or_initialize
    news.title = title
    news.image_url = image_url
    news.page_url = page_url
    news.site_name = "Diamond online"
    news.category_id = id
    news.save
  end
end
