class FlightsController < ApplicationController

  def index
    @flight = Flight.new
    @airports = Airport.all
    @flights = Flight.where(flight_params)
    @possible_dates = Flight.select(:departure_date).distinct
  end

  def show
    @flight = Flight.find(params[:id])
  end

  def flight_params
    params.fetch(:flight, {}).permit(:depart_id, :arrive_id, :departure_date)
  end
end
 
