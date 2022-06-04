class Booking < ApplicationRecord
  belongs_to :flight

  def new
    @booking = Booking.new(booking_params)
  end

  private

  def booking_params
    require(:booking).permit(:flight, :no_passengers)
  end
end
