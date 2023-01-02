class Recipe < ApplicationRecord
  belongs_to :users, class_name: 'User', foreign_key: :User_ID
  has_many :recipe_foods, foreign_key: :Recipe_ID
end
