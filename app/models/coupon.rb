class Coupon < ApplicationRecord
  belongs_to :company
  belongs_to :user

  has_one :category, through: :company

  validates :code, presence: true
  validates :description, presence: true
end
