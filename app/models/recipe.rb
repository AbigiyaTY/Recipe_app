class Recipe < ApplicationRecord
  belongs_to :users, class_name: 'User', foreign_key: :user_id
  has_many :recipe_foods, foreign_key: :recipe_id, dependent: :destroy

  validates :name, presence: true
  validates :preparation_time, presence: true
  validates :cooking_time, presence: true
  validates :description, presence: true
end
