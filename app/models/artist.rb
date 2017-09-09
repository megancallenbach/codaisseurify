class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos

  validates :name, presence: true, uniqueness: true

  def self.order_by_name

      order(:name)

  end
end
