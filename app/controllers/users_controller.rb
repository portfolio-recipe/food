class UsersController < ApplicationController
  def index
  	@users =User.all
  end

  def show
  end

  def edit
  end

  def create
  end

  def update
  	@user = User.find(params[:id])
  end

  private
  def User_params
  	params.require(:user).permit(:name, :email, :image, :introduction)

end
