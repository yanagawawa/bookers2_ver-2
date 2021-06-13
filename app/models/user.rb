class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  #1:nの関係userとbookとの関連付け。関連したuserが消されたらbookも消える 
  has_many :books, dependent: :destroy
end
