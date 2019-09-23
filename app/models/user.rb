class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :messages
  has_many :likes
  has_many :comments
  has_many :group_users
  has_many :groups, through: :group_users
  has_one_attached :image
  validates :name, presence: true
end
