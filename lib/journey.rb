
class Journey
  attr_reader :entry_station, :exit_station
  PENALTY_FARE = 6
  STANDARD_FARE = 1

  def initialize
    @entry_station = nil
    @exit_station = nil
    @all_trips = []
  end

  def entrance(entry_station)
    @entry_station = entry_station
  end

  def exit(exit_station)
    @exit_station = exit_station
    hash1 = {entry_station => exit_station}
    @all_trips.push(hash1)
  end

  def in_journey?
    if @entry_station == nil
      false
    else true
    end
  end

  def show_history
    return @all_trips
  end

  def incomplete_journey?
    @entry_station == nil || @exit_station == nil
  end

  def fare
    return PENALTY_FARE if incomplete_journey?
    return STANDARD_FARE
  end
end
