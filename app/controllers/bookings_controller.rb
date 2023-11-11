class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(buyer:current_user)
  end

  def show
    @booking = Booking.find(params[:id])
    @total = (@booking.end_date - @booking.start_date) * @booking.game.price
  end

  def new
    @booking = Booking.new
    @game = Game.find(params[:game_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.buyer= current_user
    @booking.game = Game.find(params[:game_id])
    @booking.save
    redirect_to booking_path(@booking)
  end



private

def booking_params
  params.require(:booking).permit(:start_date, :end_date)
end
end
