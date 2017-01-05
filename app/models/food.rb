class Food < ApplicationRecord
  has_many :favorite_foods
  has_many :puggles, through: :favorite_foods
end
