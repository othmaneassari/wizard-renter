class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user:current_user)
  end

  def show
    @bookings = Booking.find(params[:id])
  end

  def new
    @bookings = Booking.new
    @booking.game = Game.find(params[:game_id])
  end

  def create
    @booking = booking.new(booking_params)
    @booking.user = current_user
    @booking.game = Game.find(params[:game_id])
    @booking.save
    redirect_to booking_path(@booking)
  end




private

def booking_params
  params.require(:booking).permit(:category, :price, :age_range, :rating, :manufacturer)
end
end
