require 'pry'
include Math

def sum_of_squares(range)
  return (1..range).reduce(0) { |sum, num| sum + (num * num) }
end

def square_of_sums(range)
  return (1..range).reduce(0, :+) { |n| n } ** 2
end

def difference(range)
  return square_of_sums(range) - sum_of_squares(range)
end

puts sum_of_squares(10)
puts square_of_sums(10)

puts difference(100)