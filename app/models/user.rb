class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  #1:nの関係userとbookとの関連付け。関連したuserが消されたらbookも消える 
  has_many :books, dependent: :destroy
  # 画像アップ用のメソッド（attachment）を追加してフィールド名に（image）を指定
  attachment :image
end
