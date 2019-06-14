class Coupon < ApplicationRecord
  belongs_to :company
  belongs_to :user

  has_one :category, through: :company

  validates :code, presence: true
  validates :description, presence: true

  def url
    case company.slug
    when "ifood"
      "http://www.ifood.com.br"
    when "uber-eats"
      "http://www.ubereats.com/pt-BR/"
    when "kinoplex"
      "http://www.kinoplex.com.br"
    when "rappi"
      "http://www.rappi.com.br"
    when "cinemark"
      "http://www.cinemark.com.br"
    end
  end
end
