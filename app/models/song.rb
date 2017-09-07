class Song < ApplicationRecord
  belongs_to :artist
  validates :genre, :length, :name, presence: true
end
