class Artwork < ApplicationRecord
  belongs_to :user
  belongs_to :show
  # has_one_attached :photo
end
