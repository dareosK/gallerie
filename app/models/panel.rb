class Panel < ApplicationRecord
  belongs_to :show
  has_many :artworks
end
