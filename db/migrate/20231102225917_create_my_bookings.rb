class CreateMyBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :my_bookings do |t|
      t.text :name
      t.text :start_date
      t.text :end_date

      t.timestamps
    end
  end
end
