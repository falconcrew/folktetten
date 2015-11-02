class EditController < ApplicationController
  
  def index
    @infos = Info.all
    @scores = Score.all
    @performances = Performance.all
    @videos = Video.all
    @pictures = Picture.all
    @users = User.all
  end
  
end
