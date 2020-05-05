require_relative 'journey'

class JourneyLog
  attr_accessor :journey, :all_trips

  def initialize
    @journey = Journey.new
    @all_trips = []
  end


end
