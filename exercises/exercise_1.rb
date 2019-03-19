require_relative '../setup'

puts "Exercise 1"
puts "----------"

# def initialize(name, annual_revenue, mens_apparel, womens_apparel)
# @name = name
# @annual_revenue = annual_revenue
# @mens_apparel = mens_apparel
# @womens_apparel = womens_apparel
# end

burnaby = Store.create(
  name: "Burnaby", 
  annual_revenue: 300000, 
  mens_apparel: true, 
  womens_apparel: true
  )

richmond = Store.create(
  name: "Richmond", 
  annual_revenue: 1260000, 
  mens_apparel: false, 
  womens_apparel: true
  )

gastown = Store.create(
  name: "Gastown", 
  annual_revenue: 190000, 
  mens_apparel: true, 
  womens_apparel: false
  )

puts Store.all.count
