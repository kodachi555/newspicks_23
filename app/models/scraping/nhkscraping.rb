class Nhkscraping #現状うまくデータを取得できていないため使えない
  def self.news_urls(link)
    agent = Mechanize.new
    page = agent.get(link)
    puts link
    #title = page.at(".content--detail-header .content--detail-title .content--title").inner_text
    image_url = page.at(".content--detail-header .content--thumb img")[:src] if page.at(".content--detail-header .content--thumb img")
    puts image_url
    page_url = link
    news = Product.where(title: title).first_or_initialize
    news.title = title
    news.image_url = image_url
    news.page_url = page_url
    news.site_name = "NHKニュース"
    news.category_id = 9
    news.save
  end
end
