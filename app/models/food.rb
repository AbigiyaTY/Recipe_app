class Food < ApplicationRecord
  belongs_to :users, class_name: 'User', foreign_key: :User_ID
  has_many :recipe_foods, foreign_key: :Food_ID, dependent: :destroy
  
  validates :Name, presence: true
  validates :Measurement_Unit, presence: true
  validates :Price, presence: true
end
