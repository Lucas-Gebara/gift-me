# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
  puts "Deleting database..."
  Coupon.destroy_all
  Company.destroy_all
  Category.destroy_all
  User.destroy_all
end

puts "Creating users..."

user1 = User.create!( email: 'user1@user.com',
                     password: '123456'
                     )
user2 = User.create!( email: 'user2@user.com',
                     password: '123456'
                     )
user3 = User.create!( email: 'user3@user.com',
                      password: '123456'
                      )

puts "Creating categories..."

food = Category.create!( name: 'Food' )
cinema = Category.create!( name: 'Cinema' )

puts "Creating companies..."

ubereats = Company.create!( name: 'Uber Eats',
                            category: food
                          )

iFood = Company.create!( name: 'iFood',
                         category: food
                         )

rappi = Company.create!( name: 'Rappi',
                            category: food
                            )

kinoplex = Company.create!( name: 'Kinoplex',
                            category: cinema
                            )

cinemark = Company.create!( name: 'Cinemark',
                            category: cinema
                            )

puts "Creating coupons..."

coupon1 = Coupon.create!( description: '10R$ - for every purchase >20R$',
                           expiration_date: Date.today + (1..100).to_a.sample,
                           code: 'ABCD',
                           company: ubereats,
                           user: user1
                           )

coupon2 = Coupon.create!( description: '20R$ -  General',
                           expiration_date: Date.today + (1..100).to_a.sample,
                           code: 'ABCD',
                           company: iFood,
                           user: user2
                           )


coupon3 = Coupon.create!( description: '30R$ - minimium spending 50R$',
                           expiration_date: Date.today + (1..100).to_a.sample,
                           code: 'ABCD',
                           company: ubereats,
                           user: user2
                           )

coupon4 = Coupon.create!( description: 'Free Delivery - Only Lunch',
                           expiration_date: Date.today + (1..100).to_a.sample,
                           code: 'ABCD',
                           company: iFood,
                           user: user1
                           )

# coupon5 = Coupon.create!( description: '5R$ - Avengers',
#                            expiration_date: Date.today + (1..100).to_a.sample,
#                            code: 'ABCD',
#                            company: kinoplex,
#                            user: user3
#                            )

# coupon6 = Coupon.create!( description: '10R$ - Avengers',
#                            expiration_date: Date.today + (1..100).to_a.sample,
#                            code: 'ABCD',
#                            company: kinoplex,
#                            user: user2
#                            )
puts "Seed complete!"
