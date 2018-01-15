class Micropost < ApplicationRecord
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }

  belongs_to :user

  has_many :reverses_of_favorite
  has_many :favorite_users, through: :reverses_of_favorite, source: :user
end
