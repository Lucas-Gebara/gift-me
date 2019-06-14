class CouponsFakerService
  def import(company_id)
    coupons = []
    company = Company.find(company_id)
    rand(1..3).times do
      coupon = Coupon.new(
        description: ["#{rand(10..50)}% of discount", "R$ #{rand(5..30)} of discount", "Free delivery"].sample,
        company: company,
        code: Faker::Code.nric,
        expiration_date: Date.today + rand(30)
      )
      coupons << coupon
    end
    coupons
  end
end
