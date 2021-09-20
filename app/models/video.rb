class Video < ApplicationRecord
    before_save :format_link

    def format_link
        self.video_url = video_url.match(/(?<=video\/)\d{10,}/)
        
    end
end
