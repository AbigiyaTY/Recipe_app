class Food < ApplicationRecord
  belongs_to :users, class_name: 'User', foreign_key: :user_id
  has_many :recipe_foods, foreign_key: :food_id, dependent: :destroy

  validates :name, presence: true
  validates :measurement_unit, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
end
