class BooksController < ApplicationController

    def create
    end

    def index

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

    def user_params
      params.require(:book).permit(:title, :body)
    end
end
