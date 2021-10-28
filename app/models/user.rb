class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :books, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :book_comments, dependent: :destroy
  attachment :profile_image
  
  validates :name, uniqueness: true, length: { minimum: 2, maximum: 20 }
  # 一異性、２〜２０字
  validates :introduction, length: { maximum: 50 }
  # 空OK、最大５０字
  
end
