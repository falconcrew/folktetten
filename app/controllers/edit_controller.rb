class EditController < ApplicationController
  
  def index
    @infos = Info.all
    @scores = Score.all
    @performances = Performance.all
    @medias = Media.all
    @users = User.all
  end
  
end
