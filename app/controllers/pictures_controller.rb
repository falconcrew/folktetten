class PicturesController < ApplicationController
  
  before_action :require_editor, only: [:new, :create, :destroy]
  
  def index
    @pictures = Picture.all
    @videos = Video.all
  end
  
  def new
    @picture = Picture.new
  end
  
  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to "/edit"
    end
  end
  
  def picture_params
    params.require(:picture).permit(:name, :url, :description)
  end
  
  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to "/edit"
  end
  
end
