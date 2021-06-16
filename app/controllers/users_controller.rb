class UsersController < ApplicationController
  def show
    @user = current_user
    @users = User.find(params[:id])
  end

  def index

  end

  def edit
  end

  def update
    @book = Book.new
  end

   private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
