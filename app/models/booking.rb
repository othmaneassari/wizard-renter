class Booking < ApplicationRecord
  belongs_to :buyer, class_name: 'User', foreign_key: 'buyer_id'
  belongs_to :game
  validates :start_date, presence: true
  validates :end_date, presence: true
end
