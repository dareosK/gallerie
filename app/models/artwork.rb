class Artwork < ApplicationRecord
  belongs_to :user
  belongs_to :panel
  has_one_attached :photo
end
