class Book < ApplicationRecord
  # user_idに関連づけられる、userを参照できる
  belongs_to :user
  #1:nの関係bookとbook_commentとの関連付け。関連したbookが消されたらコメントも消える
  has_many :book_comments, dependent: :destroy
end
