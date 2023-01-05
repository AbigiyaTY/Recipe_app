class RecipeFood < ApplicationRecord
  belongs_to :recipes, class_name: 'Recipe', foreign_key: :recipe_id
  belongs_to :foods, class_name: 'Food', foreign_key: :food_id

  validates :quantity, presence: true
end
