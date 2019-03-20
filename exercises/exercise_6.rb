require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(
  first_name: "Khurram", 
  last_name: "Virani", 
  hourly_rate: 60
)

@store1.employees.create(
  first_name: "Derek", 
  last_name: "Shepherd", 
  hourly_rate: 70
)

@store1.employees.create(
  first_name: "Arizona", 
  last_name: "Robbins", 
  hourly_rate: 150
)

@store2.employees.create(
  first_name: "Meredith", 
  last_name: "Grey", 
  hourly_rate: 200
)

@store2.employees.create(
  first_name: "Alex", 
  last_name: "Karev", 
  hourly_rate: 150
)

puts Employee.all.count