class Panel < ApplicationRecord
  belongs_to :show
  has_many :artworks
  has_one_attached :wall # careful with the naming of the method in the APP. It is .wall, not .photo
end
