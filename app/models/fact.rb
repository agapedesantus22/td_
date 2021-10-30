class Fact < ApplicationRecord

  belongs_to :user
  has_many :Comments

  validates :title, presence: true,
    length: { maximum: 50 }
  validates :post, presence: true
end
