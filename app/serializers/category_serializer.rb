class CategorySerializer < ActiveModel::Serializer
  attributes :name, :id
  has_many :videos
end
