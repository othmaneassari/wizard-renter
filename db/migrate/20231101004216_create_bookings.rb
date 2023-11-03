class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :buyer_id
      t.integer :game_id
      t.text :start_date
      t.text :end_date
      t.text :status

      t.timestamps
    end
  end
end
