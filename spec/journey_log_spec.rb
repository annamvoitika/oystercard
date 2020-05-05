require 'journey_log'
require 'journey'

describe JourneyLog do

  it 'initializes with a new journey' do
    journeylog = JourneyLog.new
    expect(journeylog).to respond_to{initialize}
  end

end
