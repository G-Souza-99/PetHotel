class Place < ApplicationRecord
  belongs_to :user
  belongs_to :order

  validates :address, :name, presence: true
end
