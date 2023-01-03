class RecipeFood < ApplicationRecord
  belongs_to :recipes, class_name: 'Recipe', foreign_key: :Recipe_ID
  belongs_to :foods, class_name: 'Food', foreign_key: :Food_ID

  validates :Quantity, presence: true
end
