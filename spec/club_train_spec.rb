require 'spec_helper'
require 'clubtrain'
require 'clubtrain/mogra'
require 'clubtrain/25d'

describe ClubTrain::Train do
  it "returns events for a date" do
    twofived = File.read "spec/fixtures/25d.html"
    mogra = File.read "spec/fixtures/mogra.html"
    mogra_event = File.read "spec/fixtures/mogra_event.html"
    stub_request(:get, 'http://2-5-d.jp/schedule/20130711/').to_return(body: twofived)
    stub_request(:get, 'http://club-mogra.jp/2013/07/11/').to_return(body: mogra)
    stub_request(:get, 'http://club-mogra.jp/2013/07/11/1669/').to_return(body: mogra_event)
    c = ClubTrain::Train.new
    events = c.for_date(Date.new(2013,07,11))
    events.count.should == c.clubs.count
    events.each do |event|
      pp event
    end
  end
end
