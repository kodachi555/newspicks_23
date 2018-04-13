class Afpscraping
  def self.news_urls(link, id)
    agent = Mechanize.new
    page = agent.get(link)
    title = page.at('.article-signage .title').inner_text
    image_url = page.at('.photo-wrapper img')[:src] if page.at('.photo-wrapper img')
    page_url = link

    news = News.where(title: title).first_or_initialize
    news.title = title
    news.image_url = image_url
    news.page_url = page_url
    news.site_name = "AFP"
    news.category_id = id
    news.save
  end
end
