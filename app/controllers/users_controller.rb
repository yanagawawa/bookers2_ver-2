class UsersController < ApplicationController
  def show
    @user = current_user
    @users = User.find(params[:id])
    @book = Book.new
    # このように記述することで、そのユーザ（@users）に関連付けられた投稿のみ、@booksに渡すことができます。
    # 全体の投稿ではなく、個人が投稿したもののみを表示できます。
    @books = @users.books
                    # booksはテーブル名
  end

  def index
     @user = current_user
     @book = Book.new
     @users = User.all
  end

  def edit
    @user = current_user
    @book = Bool.find(params[:id])
  end

  def update
    @book = Book.(params[:id])
    @book = Book.update(book_params)
    redirect_to book_path(@book.id)
  end

   private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
