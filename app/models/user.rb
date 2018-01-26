class User < ApplicationRecord
  has_many :games
  has_secure_password

  validates :name, uniqueness: true
  validates :name, presence: true
end
