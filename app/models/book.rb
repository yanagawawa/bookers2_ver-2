class Book < ApplicationRecord
  # user_idに関連づけられる、userを参照できる
  belongs_to :user
end
