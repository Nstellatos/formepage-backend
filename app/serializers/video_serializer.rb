class VideoSerializer < ActiveModel::Serializer
  attributes :id, :video_url
  belongs_to :category
  
end
