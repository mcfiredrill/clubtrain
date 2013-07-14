require 'clubtrain/event'
require 'clubtrain/mogra'
require 'clubtrain/25d'

class ClubTrain
  attr_accessor :clubs
  def initialize clubs=[TwoFiveD,Mogra]
    @clubs = clubs
  end
  def for_date date
    events = []
    @clubs.each do |club|
      events << club.for_day(date)
    end
    events
  end
end
