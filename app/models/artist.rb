class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  def self.order_name_asc
    order(:name)
  end

  def self.order_name_desc
    order(name: :desc)
  end

  def self.order_date_asc
    order(:created_at)
  end

  def self.order_date_desc
    order(created_at: :desc)
  end
end
