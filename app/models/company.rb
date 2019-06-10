class Company < ApplicationRecord
  belongs_to :category
  has_many :coupons
end
