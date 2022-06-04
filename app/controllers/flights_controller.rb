class FlightsController < ApplicationController

  def index
    @flight = Flight.new
    @booking = Booking.new
    @airports = Airport.all
    @flights = Flight.where(flight_params)
    @possible_dates = Flight.select(:departure_date).distinct
    @no_passengers = no_passengers_params
  end

  def show
    @flight = Flight.find(params[:id])
  end

  private

  def all_params
    params.permit(:depart_id, :arrive_id, :departure_date, :no_passengers)
  end

  def flight_params
    { 
      depart_id: all_params[:depart_id],
      arrive_id: all_params[:arrive_id],
      departure_date: all_params[:departure_date]
    }
  end

  def no_passengers_params
    all_params[:no_passengers]
  end
end
 
