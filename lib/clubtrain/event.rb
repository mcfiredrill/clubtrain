class Event
  attr_accessor :flyer, :info, :title, :date
  def initialize info, flyer, title, date
    @info = info
    @flyer = flyer
    @title = title
    @date = date
  end
end
