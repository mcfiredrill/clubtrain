require 'nokogiri'
require 'open-uri'

module ClubTrain
  class Mogra
    BASE_URL = 'http://club-mogra.jp'

    def self.for_day date
      url = "#{BASE_URL}/#{sprintf("%04d",date.year)}/#{sprintf("%02d",date.month)}/#{sprintf("%02d",date.day)}/"
      page = Nokogiri::HTML(open(url))
      link = page.css("div.event a").first.attributes["href"].value
      title = page.css("div.event a").first.attributes["title"].value
      event_page = Nokogiri::HTML(open("#{BASE_URL}#{link}"))
      flyer = event_page.css("div.event img").first.attributes["src"].value
      info = event_page.css("div.event div.data").text
      Event.new(info, flyer, title, date)
    end
  end
end
