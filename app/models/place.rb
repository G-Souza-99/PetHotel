class Place < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_one_attached :photo

  validates :address, :name, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
