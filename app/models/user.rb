class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, length: {in: 2..20}
  validates :introduction, length: {maximum: 50}

  attachment :image

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorite, dependent: :destroy
end
