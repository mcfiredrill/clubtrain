require 'spec_helper'
require 'clubtrain'
require 'clubtrain/mogra'
require 'clubtrain/25d'

describe ClubTrain do
  it "returns events for a date" do
    twofived = File.read "spec/fixtures/25d.html"
    mogra = File.read "spec/fixtures/mogra.html"
    mogra_event = File.read "spec/fixtures/mogra_event.html"
    stub_request(:get, 'http://2-5-d.jp/schedule/20130711/').to_return(body: twofived)
    stub_request(:get, 'http://club-mogra.jp/2013/07/11/').to_return(body: mogra)
    stub_request(:get, 'http://club-mogra.jp/2013/07/11/1669/').to_return(body: mogra_event)
    c = ClubTrain.new
    events = c.for_date(Date.new(2013,07,11))
    events.each do |event|
      puts event.info
      puts event.flyer
    end
  end
end
