require 'station'

describe Station do
  subject { Station.new('London Bridge', 1) }
  it 'exposes station name' do
    expect(subject.station_name).to eq ('London Bridge')
  end

  it 'exposes station zone' do
    expect(subject.station_zone).to eq(1)
  end

end
