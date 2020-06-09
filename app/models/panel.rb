class Panel < ApplicationRecord
  belongs_to :show
  has_many :artworks
  has_one_attached :wall
end
