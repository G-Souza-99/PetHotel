class Place < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_one_attached :photo

  validates :address, :name, :description, :price, :photo, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 1 }
end
