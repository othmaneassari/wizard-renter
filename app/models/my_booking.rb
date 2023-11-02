class MyBooking < ApplicationRecord
  validate :name, :start_date, :end_date,  presenece:true
end
