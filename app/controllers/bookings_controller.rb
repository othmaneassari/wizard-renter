class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @bookings = Booking.find(params[:id])
  end

  def new
    @bookings = Booking.new
  end

  def create
    @booking = booking.new(booking_params)
    @booking.user = current_user
    @booking.save
    redirect_to booking_path(@booking)
  end
end

private

def booking_params
  params.require(:booking).permit(:category, :price, :age_range, :rating, :manufacturer)
end
