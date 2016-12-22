class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :edit]
  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    #redirect_to users_url
  end
end
