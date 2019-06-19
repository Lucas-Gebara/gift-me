class CouponsImport
  include ActiveModel::Model

  attr_reader :coupons
  attr_accessor :companies, :user

  validates :companies, :user, presence: true

  def save
    @service = IgCouponService.new
    if valid?
      @coupons = []
      companies.each do |company_id|
        @coupons << @service.import(company_id).map do |cp|
          cp.user = user
          cp.company_id = company_id
          cp
        end
      end
      @coupons.flatten.each(&:save)
      true
    else
      false
    end
  end
end
