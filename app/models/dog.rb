class Dog < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :woofs
  has_many :followers, class_name: "Follow", foreign_key: "follower_id"
  has_many :followings, class_name: "Follow", foreign_key: "following_id"
  validates :username, presence: true, uniqueness: true, length: { minimum: 8 }
end
