class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # emailの重複がないかチェック=>uniqueness: trueで指定
  validates :email, {presence: true, uniqueness: true}
end
