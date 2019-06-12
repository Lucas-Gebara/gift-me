class CouponsImport
  include ActiveModel::Model

  attr_accessor :companies, :user

  validates :companies, :user, presence: true

  def save
    @service = CouponsFakerService.new
    if valid?
      coupons = []
      companies.each do |company_id|
        coupons << @service.import(company_id)
      end
      coupons.flatten.each do |cp|
        cp.user = user
        cp.save
      end
      true
    else
      false
    end
  end
end
