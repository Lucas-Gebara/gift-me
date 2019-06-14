class Category < ApplicationRecord
  has_many :companies

  def slug
    name.parameterize
  end
end
