class Recipe < ApplicationRecord
  belongs_to :users, class_name: 'User', foreign_key: :User_ID
  has_many :recipe_foods, foreign_key: :Recipe_ID, dependent: :destroy

  validates :Name, presence: true
  validates :Preparation_Time, presence: true
  validates :Cooking_Time, presence: true
  validates :Decription, presence: true
end
