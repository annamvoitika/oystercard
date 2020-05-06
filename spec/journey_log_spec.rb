require 'journey_log'
require 'journey'

describe JourneyLog do
#  let(:journey){ double :journey }

  it 'initializes with a new journey' do
    journeylog = JourneyLog.new
    expect(journeylog).to respond_to{initialize}
  end

#  it 'can store entry and exit station in all trips log' do
#    journeylog = JourneyLog.new(journey)
#    expect(journeylog.log).to include(journey)
#  end

end
