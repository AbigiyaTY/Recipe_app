class User < ApplicationRecord
  has_many :foods, foreign_key: :User_ID
  has_many :recipes, foreign_key: :User_ID
end
