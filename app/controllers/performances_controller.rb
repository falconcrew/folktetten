class PerformancesController < ApplicationController
  
  def index
    @performances = Performance.all
  end
  
  def new
    @performance = Performance.new
  end
  
  def create
    @performance = Performance.new(perf_params)
    if @performance.save
      redirect_to "/edit"
    end
  end
  
  def edit
    @performance = Performance.find(params[:id])
  end
  
  def update
    @performance = Performance.find(params[:id])
    if @performance.update_attributes(perf_params)
      redirect_to '/edit'
    end
  end
  
  def destroy
    @performance = Performance.find(params[:id])
    @performance.destroy
    redirect_to "/edit"
  end
  
  private
  def perf_params
    params.require(:performance).permit(:name, :location, :date, :time, :description)
  end
  
end
