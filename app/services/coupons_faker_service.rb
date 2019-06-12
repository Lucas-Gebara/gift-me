class CouponsFakerService
  def import(company_id)

    coupons = []
    company = Company.find(company_id)
    rand(10..15).times do
      coupon = Coupon.new(
        description: "#{rand(5..50)}% of discount",
        company: company,
        code: Faker::Code.nric,
        expiration_date: Faker::Date.between(Date.today, 1.month.from_now).strftime('%m/%d/%Y')
      )
      coupons << coupon
    end
    coupons
  end
end
