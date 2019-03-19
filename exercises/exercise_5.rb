require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@total_revenue = Store.sum("annual_revenue")
puts "Total Revenue: ", @total_revenue

@avg_revenue = @total_revenue / Store.all.count
puts "Average Revenue: ", @avg_revenue

@high_earning_stores = Store.where(annual_revenue: 1000000...Float::INFINITY).count

puts "Number of stores making > $1M: ", @high_earning_stores