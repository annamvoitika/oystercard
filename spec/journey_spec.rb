require 'journey'

describe Journey do
  it 'remembers entry station of a journey' do
  journey = Journey.new
  expect(journey).to respond_to(:entrance)
end

  it 'can store exit station in all trips log' do
    journey = Journey.new
    expect(journey.exit('Notting Hill')).to eq ['Notting Hill']
  end

  it 'can store entry and exit station in all trips log' do
    journey = Journey.new
    journey.entrance('Holborn')
    expect(journey.exit('Mile End')).to eq ['Holborn', 'Mile End']
  end

  it 'can store multiple entry and exit stations in all trips log' do
    journey = Journey.new
    journey.entrance('Bethnal Green')
    journey.exit('Old Street')
    journey.entrance('Covent Garden')
    expect(journey.exit('Marylebone')).to eq ['Bethnal Green', 'Old Street', 'Covent Garden', 'Marylebone']
  end

end
