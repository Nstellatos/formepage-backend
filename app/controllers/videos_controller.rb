class VideosController < ApplicationController
    def index  
        videos = Video.all 
        render json: videos
    end
    def create 
        video = Video.create(video_params)
        if video.save
            render json: video, status: :created
        else
            render json: video.errors, status: :unprocessable_entity
        end
    end
        # url = params[:video][:video_url]
        # url = url.match(/(?<=video\/)\d{10,}/)
        #video.video_url = url
    

    private
    def video_params 
        params.require(:video).permit(:video_url, :category_id)
    end
end

