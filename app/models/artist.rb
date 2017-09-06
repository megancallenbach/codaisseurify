class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  def alphabetize
  end
  def alphabetize_reversed
  end
end
