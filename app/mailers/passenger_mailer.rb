class PassengerMailer < ApplicationMailer
  default from: 'no-reply@test.com'

  def booking_email
    @booking = params[:booking]
    mail(to: @booking.email, subject: 'Flight Booked!')
  end
end
