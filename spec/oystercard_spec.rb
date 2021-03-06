require 'oystercard'
require 'journey'
require 'journey_log'

describe OysterCard do
  subject { OysterCard.new(0) }
  let(:card){double :card, in_journey?: true}
  let(:entry_station){double :entry_station}
  let(:exit_station){double :exit_station}

  it 'has balance of zero' do
    expect(subject.balance).to eq(0)
  end

  it 'money can be deducted' do
    expect{ subject.deduct(5) }.to change { subject.balance }.by(-5)
  end

  it 'can understand if card is in journey' do
    expect(card.in_journey?).to be true
  end


  describe '#touch out' do
    it 'can touch out' do
      expect(subject.touch_out(exit_station)).to eq false
    end

    it 'deducts journey cost from the card when touching out' do
      expect{ subject.touch_out(exit_station) }.to change {subject.balance}.by(-1)
    end

    it 'remembers a station where you touched out' do
      expect(subject).to respond_to{touch_out(exit_station)}
    end
  end

  describe '#touch in' do
    it 'can check that minimum balance is available before touch in' do
      expect{ subject.touch_in(entry_station) }.to raise_error 'Insufficient balance, you need £1 minimum to travel'
    end

  it 'remembers a station where you touched in' do
    expect(subject).to respond_to{touch_in(entry_station)}
  end
end

  describe '#top up' do
    it 'can be topped up' do
      expect{ subject.top_up(10) }.to change { subject.balance }.by(10)
    end

    it 'can not be topped up if balance adds up to £90 or more' do
      expect{ subject.top_up(91) }.to raise_error 'Limit of £90 reached'
    end

  end

end
