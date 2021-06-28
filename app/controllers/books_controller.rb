class BooksController < ApplicationController

    def create
        # 何を入れるのか。ストロングパラメーター,privateの（book_params）を入れないと、空のままviewに送ってしまう
        @book = Book.new(book_params)
        # 誰が投稿したのかを識別するために、idを指定
        @book.user_id = current_user.id
        @book.save
        redirect_to book_path(@book)
    end

    def index
        @user = current_user
        @book = Book.new
        @books = Book.all
    end

    def show
        @user = current_user
        @book = Book.new
        @books = Book.find(params[:id])
        @book_comment = BookComment.new
    end

    def edit
        @book = Book.find(params[:id])
    end

    def update
        book = Book.find(params[:id])
        book.update(book_params)
        redirect_to book_path(book)
    end

    def destroy
        book = Book.find(params[:id])
        book.destroy
        redirect_to books_path
    end

    private

    def book_params
      params.require(:book).permit(:title, :body)
    end
end
