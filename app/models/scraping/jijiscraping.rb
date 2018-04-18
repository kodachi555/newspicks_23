class Jijiscraping
  def self.news_urls(link)
    agent = Mechanize.new
    page = agent.get(link)
    title = page.at('.ArticleTitle h1').inner_text
    image_url = page.at(".ArticleImgWidthAuto a img")[:src] if page.at('.ArticleImgWidthAuto a img')
    page_url = link
    news = Product.where(title: title).first_or_initialize
    news.title = title
    news.image_url = image_url
    news.page_url = page_url
    news.site_name = "時事ドットコム"
    news.category_id = 11
    #時事ドットコムには政治経済系の記事しかないため、あらかじめ政治経済カテゴリーに自動で振り分けられるように指定しておく
    news.save
  end
end
