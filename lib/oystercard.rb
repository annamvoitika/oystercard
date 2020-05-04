class Oystercard
  attr_reader :balance
  MAX_BALANCE = 90

  def initialize(balance)
    @balance = balance
  end

  def top_up(amount)
    @balance += amount
    raise 'Limit of £90 reached' if @balance >= MAX_BALANCE
  end

end
