class VideoSerializer < ActiveModel::Serializer
  attributes :video_url, :id
  belongs_to :category
  
end
