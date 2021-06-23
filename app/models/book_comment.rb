class BookComment < ApplicationRecord
  # 関連付けをするための記述、ユーザーとブックに紐付けを行う
  belongs_to :user
  belongs_to :book
end
