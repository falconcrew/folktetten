class InfosController < ApplicationController
  
  def index
    @infos = Info.all
  end
  
  def info
    @infos = Info.all
  end
  
  def contact
    @infos = Info.all
  end
  
  def edit
    @info = Info.find(params[:id])
  end
  
  def update
    @info = Info.find(params[:id])
    if @info.update_attributes(info_params)
      redirect_to '/edit'
    end
  end
  
  private
  def info_params
    params.require(:info).permit(:start, :info, :contact)
  end
  
end
