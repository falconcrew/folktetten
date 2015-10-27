class PerformancesController < ApplicationController
  
  def index
    @performances = Performance.all
  end
  
  def new
    @performance = Performance.new
    @scores = Score.all
  end
  
  def create
    @performance = Performance.new(perf_params)
    @performance.scores = params[:scores]
    if @performance.save
      redirect_to "/edit"
    end
  end
  
  def show
    @performance = Performance.find(params[:id])
    @scores = []
    @performance.scores.each do |score|
      @scores.push(Score.find_by_name(score))
    end
  end
  
  def edit
    @performance = Performance.find(params[:id])
    @scores = Score.all
  end
  
  def update
    @performance = Performance.find(params[:id])
    @performance.scores = params[:scores]
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
