class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.integer :car_id
      t.integer :buyer_id
      t.string :color
      t.string :interior_color
      t.string :engine
      t.string :transmission
      t.string :exhaust
      t.string :tires
      t.string :rims

      t.timestamps
    end
  end
end
