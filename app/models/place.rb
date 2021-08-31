class Place < ApplicationRecord
  belongs_to :user
  has_many :orders

  validates :address, :name, presence: true
end
