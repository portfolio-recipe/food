class UsersController < ApplicationController

  def index
  	@user =User.all
  end

  def show
    @user = User.find(params[:id])
    @recipes = Recipe.where(user_id: @user.id)
    @recipes = Kaminari.paginate_array(@recipes).page(params[:page]).per(9)
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end

  def delete
  end

  def destroy
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to root_path, notice: "削除しました。"
  end

  private
  def user_params
  	params.require(:user).permit(:name, :email, :image)
  end
end
