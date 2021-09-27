class VideoSerializer < ActiveModel::Serializer
  attributes :video_url, :category, :id
  belongs_to :category
  
end
