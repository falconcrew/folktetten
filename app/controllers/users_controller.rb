class UsersController < ApplicationController
  
  before_action :require_admin, only: [:new, :create, :destroy]
  
  def index
    @contacts = Info.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/'
    end
  end
  
  def edit
    @user = User.find(params[:id])
    if @user.id != current_user.id && current_user.role != "admin"
      redirect_to "/"
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to "/edit"
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to "/edit"
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :role)
  end
  
end
