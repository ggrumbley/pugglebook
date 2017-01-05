class FavoriteFoodSerializer < ActiveModel::Serializer
  attributes :id
  has_one :puggle
  has_one :food
end
