class EditController < ApplicationController
  
  before_action :require_editor, only: [:index]
  
  def index
    @infos = Info.all
    @scores = Score.all
    @performances = Performance.all
    @videos = Video.all
    @pictures = Picture.all
    @users = User.all
  end
  
end
