require 'oystercard'
describe Oystercard do
  subject { Oystercard.new(0) }
  
  it 'has balance of zero' do
    expect(subject.balance).to eq(0)
  end
end
