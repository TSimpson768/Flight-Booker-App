class FlightsController < ApplicationController

  def index
    @flight = Flight.new
    @airports = Airport.all
    @flights = Flight.where(flight_params) if flight_params
  end

  def show
    
  end

  def flight_params
    params.fetch(:flight, {}).permit(:depart_id, :arrive_id, :departure_time)
  end
end
 
