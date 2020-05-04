require 'oystercard'
describe Oystercard do
  subject { Oystercard.new(0) }

  it 'has balance of zero' do
    expect(subject.balance).to eq(0)
  end

  it 'money can be deducted' do
    expect{ subject.deduct(5) }.to change { subject.balance }.by(-5)
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
