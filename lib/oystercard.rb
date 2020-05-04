class Oystercard
  attr_accessor :balance
  MAX_BALANCE = 90
  MIN_BALANCE = 1

  def initialize(balance)
    @balance = balance
    @in_use = false
  end

  def top_up(amount)
    @balance += amount
    raise 'Limit of £90 reached' if @balance >= MAX_BALANCE
  end

  def deduct(amount)
    @balance -= amount
  end

  def touch_in
    raise 'Insufficient balance, you need £1 minimum to travel' if @balance < MIN_BALANCE
    @in_use = true
  end

  def touch_out
    @in_use = false
  end

  private

  def in_journey?
    if in_use == true
      return true
    else return false
    end
  end

end
