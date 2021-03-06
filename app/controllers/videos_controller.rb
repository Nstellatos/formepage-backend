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
def destroy
    video = Video.find(params[:id])
    if video.destroy 
        render json: {message: "video deleted"} 
    else
        render json: {message: "hmm.. something went wrong Error: #{video.errors.full_message}"}
    end
end


    private
    def video_params 
        params.require(:video).permit(:video_url, :category_id)
    end
end

