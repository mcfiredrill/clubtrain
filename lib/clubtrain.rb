require 'clubtrain/event'

class ClubTrain
  attr_accessor :clubs
  def initialize *clubs
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
