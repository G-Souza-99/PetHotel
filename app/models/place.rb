class Place < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_one_attached :photo

  validates :address, :name, presence: true
end
