class Journey
  attr_reader :entry_station, :exit_station

  def entrance(entry_station)
    @entry_station = entry_station
  end

  def exit(exit_station)
    @exit_station = exit_station
  end 

end
