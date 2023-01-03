class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :Name
      t.string :Preparation_Time
      t.string :Cooking_Time
      t.text :Decription
      t.boolean :Public
      t.integer :User_ID

      t.timestamps
    end
  end
end
