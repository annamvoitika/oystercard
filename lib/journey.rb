class Journey
  attr_reader :entry_station, :exit_station

  def initialize
    @entry_station = entry_station
    @all_trips = []
  end

  def entrance(entry_station)
    @entry_station = entry_station
    @all_trips << entry_station
  end

  def exit(exit_station)
    @exit_station = exit_station
    @all_trips << exit_station
  end

  def in_journey?
    if @entry_station == nil
      false
    else true
    end
  end
end
