class Wiredscraping
  def self.news_urls(link)
    agent = Mechanize.new
    page = agent.get(link)
    puts page
    # title = page.at('.post-category h1').inner_text
    # image_url = page.at('.article-detail img')[:src] if page.at('.article-detail img')
    # page_url = link
    # news = News.where(title: title).first_or_initialize
    # news.title = title
    # news.image_url = image_url
    # news.page_url = page_url
    # news.site_name = "WIRED"
    # news.category_id = 5    #現時点でcategory_idの自動特定はできないため自分で設定してください
    # news.save
  end
end
