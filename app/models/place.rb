class Place < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :address, :name, :description, :price, :photo, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 1 }

end
