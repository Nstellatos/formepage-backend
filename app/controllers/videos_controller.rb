class VideosController < ApplicationController
    def index  
        videos = Video.all 
        render json: videos
    end
    def create 
        video = Video.create(video_params)
        url = params[:video][:video_url]
        url = url.match(/(?<=video\/)\d{10,}/)
        video.video_url = url
        render json: video 
    end

    private
    def video_params 
        params.require(:video).permit(:video_url)
    end
end

