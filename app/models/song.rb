class Song < ApplicationRecord
  belongs_to :artist
  validates :genre, :length, :release_date, :name, presence: true

  def alphabetize
    @songs.sort! {|a, z| a => z}
  end


end
