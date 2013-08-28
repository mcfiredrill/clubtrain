module ClubTrain
  class Event
    attr_accessor :flyer, :info, :title, :date
    def initialize info, flyer, title, date, club
      @info = info
      @flyer = flyer
      @title = title
      @date = date
      @club = club
    end
  end
end
