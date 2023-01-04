class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :foods, foreign_key: :User_ID
  has_many :recipes, foreign_key: :User_ID

  validates :Name, presence: true
end
