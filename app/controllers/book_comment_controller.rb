class BookCommentController < ApplicationController
  def create
    book = Book.find(params[:id])
    comment = current_user.book_comments.new(book_comment_params)
  end
  
  def destroy
    
  end
  
  private

  def book_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
