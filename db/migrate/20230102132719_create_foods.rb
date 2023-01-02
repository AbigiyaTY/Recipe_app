class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :Name
      t.integer :Measurement_Unit
      t.integer :Price
      t.integer :Quantity
      t.integer :User_ID

      t.timestamps
    end
  end
end
