class Show < ApplicationRecord
  belongs_to :user
  has_many :artworks, dependent: :destroy
  has_one_attached :photo
end
