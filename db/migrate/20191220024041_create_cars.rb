class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.integer :user_id
      t.integer :buyer_id
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      t.string :interior_color
      t.string :car_condition
      t.string :location
      t.string :engin_size
      t.string :transmission_type
      t.string :exhaust
      t.string :mileage
      t.integer :price
      t.string :tires
      t.string :rims
      t.text :car_description

      t.timestamps
    end
  end
end
