class Show < ApplicationRecord
  belongs_to :user
  has_many :artworks, dependent: :destroy # maybe I don't need this, or can be through panels?
  has_many :panels
end
