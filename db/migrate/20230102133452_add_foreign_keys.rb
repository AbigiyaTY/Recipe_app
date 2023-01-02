class AddForeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_reference :foods, :User_ID, foreign_key: { to_table: :users }
    add_reference :recipes, :User_ID, foreign_key: { to_table: :users }
    add_reference :recipe_foods, :Food_ID, foreign_key: { to_table: :foods }
    add_reference :recipe_foods, :Recipe_ID, foreign_key: { to_table: :recipes }


  end
end
