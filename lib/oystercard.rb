class Oystercard
  attr_accessor :balance, :entry_station
  MAX_BALANCE = 90
  MIN_BALANCE = 1

  def initialize(balance)
    @balance = balance
    @entry_station = entry_station
  end

  def top_up(amount)
    @balance += amount
    raise 'Limit of £90 reached' if @balance >= MAX_BALANCE
  end

  def deduct(amount)
    @balance -= amount
  end

  def touch_in(entry_station)
    raise 'Insufficient balance, you need £1 minimum to travel' if @balance < MIN_BALANCE
    @entry_station = entry_station
    in_journey?
  end

  def touch_out
    deduct(1)
    @entry_station = nil
    in_journey?
  end

  def in_journey?
    if @entry_station == nil
      return false
    else return true
    end
  end
end
