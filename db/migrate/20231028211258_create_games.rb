class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :category
      t.string :name
      t.integer :price
      t.integer :age_range
      t.integer :rating
      t.string :manufacturer

      t.timestamps
    end
  end
end
