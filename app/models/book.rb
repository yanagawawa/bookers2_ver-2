class Book < ApplicationRecord
  # user_idに関連づけられる、userを参照できる
  belong_to :user
end
