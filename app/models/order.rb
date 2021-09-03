class Order < ApplicationRecord
  belongs_to :user
  belongs_to :place

  validate :end_date_is_after_start_date?
  validates :guest, presence: true
  validates :guest, numericality: { greater_than_or_equal_to: 1 }

  private

  def end_date_is_after_start_date?
    if checkin.present? && checkout.present? && checkout < checkin
      self.errors[:base] << "cannot be before the start date"
    end
  end
end
