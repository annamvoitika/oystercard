require 'journey'

describe Journey do
  subject { Journey.new }

  describe '#entry and exit log' do
    it 'remembers entry station of a journey' do
    expect(subject).to respond_to(:entrance)
  end

#  it 'can store entry and exit station in all trips log' do
#    subject.entrance('Holborn')
#    expect(subject.exit('Mile End')).to eq [{'Holborn' => 'Mile End'}]
#  end

#  it 'can store multiple entry and exit stations in all trips log' do
#    subject.entrance('Bethnal Green')
#    subject.exit('Old Street')
#    subject.entrance('Covent Garden')
#    expect(subject.exit('Marylebone')).to eq [{'Bethnal Green' => 'Old Street'}, {'Covent Garden' => 'Marylebone'}]
#  end

#  it 'can print history of all journeys' do
#    subject.entrance('Bethnal Green')
#    subject.exit('Old Street')
#    subject.entrance('Covent Garden')
#    subject.exit('Marylebone')
#    expect(subject.show_history).to eq [{'Bethnal Green' => 'Old Street'}, {'Covent Garden' => 'Marylebone'}]
#  end
  end

  it 'can determine if journey is incomplete' do
    allow(subject).to receive(:incomplete_journey?) {true}
    expect(subject.incomplete_journey?).to eq true
  end

  it 'returns penalty fare if journey is incomplete' do
    allow(subject).to receive(:incomplete_journey?) {true}
    expect(subject.fare).to eq(6)
  end

  it 'returns standard fare if journey is complete' do
    allow(subject).to receive(:incomplete_journey?) {false}
    expect(subject.fare).to eq(1)
  end

end
