class UsersController < ApplicationController
  def edit
  end

  def update
  end
  
  def show
    @user = User.find(params[:id])
    # @user = current_user
    @books = @user.books
    #controllerになくてもいい
  end  
  
  def index
    
  end  
end
