class Puggle < ApplicationRecord
  has_many :favorite_foods
  has_many :foods, through: :favorite_foods
end
