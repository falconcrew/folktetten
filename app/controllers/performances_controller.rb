class PerformancesController < ApplicationController
  
  before_action :require_user, only: [:show, :new, :create, :update, :edit, :destroy]
  before_action :require_editor, only: [:new, :edit, :create, :update, :destroy]
  
  def index
    @performances = Performance.all
    @months = ["Januari","Februari","Mars","April","Maj","Juni","Juli","Augusti","September","Oktober","November","December"]
  end
  
  def new
    @performance = Performance.new
    @scores = Score.all
  end
  
  def create
    @performance = Performance.new(perf_params)
    @performance.scores = params[:scores]
    @performance.year = params[:year]
    @performance.month = params[:month]
    @performance.day = params[:day]
    if @performance.save
      redirect_to "/edit"
    end
  end
  
  def show
    @performance = Performance.find(params[:id])
    @scores = []
    if @performance.scores == nil
      redirect_to '/performances'
    else
      @performance.scores.each do |score|
        @scores.push(Score.find_by_name(score))
      end
    end
  end
  
  def edit
    @performance = Performance.find(params[:id])
    @scores = Score.all
  end
  
  def update
    @performance = Performance.find(params[:id])
    @performance.scores = params[:scores]
    @performance.year = params[:year]
    @performance.month = params[:month]
    @performance.day = params[:day]
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
    params.require(:performance).permit(:name, :location, :time, :description)
  end
  
end
