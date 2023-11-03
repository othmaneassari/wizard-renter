class MyBookingsController < ApplicationController
def my_index
  @my_bookings = My_bookings.all
end
  def my_show
    @My_bookings = My_booking.find(params[:id])
  end
end
