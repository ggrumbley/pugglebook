class FavoriteFood < ApplicationRecord
  belongs_to :puggle
  belongs_to :food
end
