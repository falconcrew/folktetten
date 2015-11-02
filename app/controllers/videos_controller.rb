class VideosController < ApplicationController
  
  def index
    @videos = Video.all
  end
  
  def new
    @video = Video.new
  end
  
  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to "/edit"
    end
  end
  
  def video_params
    params.require(:video).permit(:name, :url, :description)
  end
  
  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to "/edit"
  end
  
end
