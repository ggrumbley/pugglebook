class PuggleSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :build, :temperament
  has_many :foods
end
