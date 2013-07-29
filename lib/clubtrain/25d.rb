module ClubTrain
  class TwoFiveD
    BASE_URL = 'http://2-5-d.jp'

    def self.for_day date
      url = "#{BASE_URL}/schedule/#{sprintf("%04d",date.year)}#{sprintf("%02d",date.month)}#{sprintf("%02d",date.day)}/"
      page = Nokogiri::HTML(open(url))
      info = page.css("div#schedule-single section").first.text
      flyer = page.css("article#single-article.article-medium img.aligncenter.size-large").first.attributes["src"].value
      title = page.css("header#article-header h1").text
      Event.new(info, flyer, title, date)
    end
  end
end
