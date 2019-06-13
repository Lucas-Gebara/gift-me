class Company < ApplicationRecord
  belongs_to :category
  has_many :coupons

  def slug
    name.parameterize
  end
end
