class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :Name
      t.integer :Preparation_Time
      t.integer :Cooking_Time
      t.string :Decription
      t.string :Public
      t.integer :User_ID

      t.timestamps
    end
  end
end
