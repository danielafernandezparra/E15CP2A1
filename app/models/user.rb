class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true
  validates :username, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :histories

def to_s
  username
end
end
