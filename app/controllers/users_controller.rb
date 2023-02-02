class UsersController < ApplicationController
  def edit
    # @user = User.new
    # @user = User.find(params[:id])
    @user = current_user

  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def show
    @user = User.find(params[:id])
    # @user = current_user
    @books = @user.books
    #controllerになくてもいい
    # @user.user_id = current_user.id
  end

  def index
    @user_image = UserImage.all
  end

    private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
