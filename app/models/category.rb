class Category < ApplicationRecord
  has_many :companies
  has_many :coupons, through: :companies

  def slug
    name.parameterize
  end
end
