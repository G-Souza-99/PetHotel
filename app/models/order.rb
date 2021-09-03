class Order < ApplicationRecord
  belongs_to :user
  belongs_to :place

  validates :guest, presence: true
  validates :guest, numericality: { greater_than_or_equal_to: 1 }
end
