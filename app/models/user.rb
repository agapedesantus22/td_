class User < ApplicationRecord

  has_many :facts
  validates :password, presence: true,
    length: { minimum: 8 }
  validates :email, presence: true
end
