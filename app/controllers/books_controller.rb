class BooksController < ApplicationController

    def create
        # 何を入れるのか（book_params）を入れないと、空のままviewに送ってしまう
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

    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def book_params
      params.require(:book).permit(:title, :body)
    end
end
