class BookingsController < ApplicationController

  def new
    @booking = Booking.new(flight_id_params)
    @no_passengers = no_passengers
    no_passengers.to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(create_booking_params)
    if @booking.save
      PassengerMailer.with(booking: @booking).booking_email.deliver_now
      redirect_to @booking
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @passengers = @booking.passengers
  end

  private

  def create_booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:first_name, :last_name, :address1, :address2, :address3, :address4, :address5, :postcode, :date_of_birth])
  end

  def flight_id_params
    { flight_id: all_params[0] }
  end

  def no_passengers
    all_params[1]
  end

  def all_params
    params.require([:flight_id, :no_passengers])
  end
end
