class ScoresController < ApplicationController
  
  before_action :require_user, only: [:index, :new, :create, :destroy]
  before_action :require_editor, only: [:new, :create, :destroy]
  
  def index
    @scores = Score.all.order(:name)
  end
  
  def new
    @score = Score.new
  end
  
  def create
    params[:uploads].each do |upload|
      @score = Score.new(attachment: upload)
      @score.name = File.basename(@score.attachment_url)
      unless @score.save
        render root
      end
    end
    redirect_to "/scores"
  end
  
  def destroy
    @score = Score.find(params[:id])
    @score.destroy
    redirect_to "/edit"
  end
  
end
