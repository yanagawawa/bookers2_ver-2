class BookCommentsController < ApplicationController
  def create
    # book_idのルートを確認すると、commentはbookに対してネストしているので、idの部分が特殊
    book = Book.find(params[:book_id])
    comment = current_user.book_comments.new(book_comment_params)
    # コメントテーブルのbook_idと投稿のidが一緒だよ
    comment.book_id = book.id
    comment.save
    redirect_to book_path(book.id)
  end

  def destroy
    BookComment.find_by(id: params[:id],book_id: params[:book_id]).destroy
    redirect_to book_path(params[:book_id])
  end

  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end
end
