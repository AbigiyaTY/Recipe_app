class CreateRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
      t.integer :Quantity
      t.integer :Recipe_ID
      t.integer :Food_ID

      t.timestamps
    end
  end
end
