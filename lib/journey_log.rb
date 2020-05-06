require_relative 'journey'

class JourneyLog
  attr_accessor :journey, :all_trips

  def initialize
    @journey = journey
    @all_trips = []
  end

  def start_journey(entry_station)
    @journey.entrance(entry_station)
  end

  def end_journey(exit_station)
    @journey.exit(exit_station)
  end

  def log (journey =Journey)
    hash1 = {@entry_station => @exit_station}
    @all_trips.push(hash1)
    return @all_trips
  end

end
