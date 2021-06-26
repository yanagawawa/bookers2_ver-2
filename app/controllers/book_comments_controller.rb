class BookCommentsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    comment = current_user.book_comments.new(book_comment_params)
    # コメントテーブルのbook_idと投稿のidが一緒だよ
    comment.book_id = book.id
    comment.save
    redirect_to book_path(book.id)
  end

  def destroy

  end

  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end
end
