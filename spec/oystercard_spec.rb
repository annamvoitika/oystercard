require 'oystercard'
describe Oystercard do
  subject { Oystercard.new(0) }

  it 'has balance of zero' do
    expect(subject.balance).to eq(0)
  end

  it 'can be topped up' do
    expect{subject.top_up(10)}.to change {subject.balance}.by(10)
  end
end
