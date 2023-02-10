class UsersController < ApplicationController
  def edit
    is_matching_login_user
    @user = current_user
  end

  def update
      @user = User.find(params[:id])
    if@user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      # redirect_to edit_user_path(@user.id)
       render :edit
    end
  end

  def show
    @user = User.find(params[:id])
    # @user = current_user
    @books = @user.books
    @book = Book.new
    #controllerになくてもいい
    # @user.user_id = current_user.id
  end

  def index
    @users = User.all
    @book = Book.new

  end

    private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

  def is_matching_login_user
    user_id = params[:id].to_i
    unless user_id == current_user.id
      redirect_to users_path
    end
  end
end
