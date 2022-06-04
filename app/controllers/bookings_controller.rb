class BookingsController < ApplicationController

  def new
    @booking = Booking.new(flight_id_params)
  end

  private

  def flight_id_params
    { flight_id: all_params[0] }
  end

  def no_passengers
    { no_passengers: all_params[1] }
  end

  def all_params
    params.require([:flight_id, :no_passengers])
  end
end
