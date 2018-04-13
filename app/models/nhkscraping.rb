class Nhkscraping
  def self.news_urls
    agent = Mechanize.new
    page = agent.get("https://www3.nhk.or.jp/news/html/20180413/k10011401281000.html?utm_int=news-new_contents_list-items_002")
    puts page
    # agent.page.encoding = 'Shift_JIS'
    # title = page.at(".content--detail-title h1").inner_text
    # image_url = page.at(".content--thumb img")[:src] if page.at('.content--thumb img')
    # page_url = link
    # news = News.where(title: title).first_or_initialize
    # news.title = title
    # news.image_url = image_url
    # news.page_url = page_url
    # news.site_name = "NHKニュース"
    # news.save
  end
end
