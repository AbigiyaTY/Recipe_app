class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :Measurement_Unit
      t.integer :Price
      t.string :Quantity

      t.timestamps
    end
  end
end
