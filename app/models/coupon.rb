class Coupon < ApplicationRecord
  belongs_to :company
  belongs_to :user

  validates :code, presence: true
  validates :description, presence: true
end
