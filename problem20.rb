factorial = (1..100).reduce(1) { |prod, num| prod * num }

answer = factorial.to_s.split("").reduce(0) { |sum, num| sum + num.to_i }

puts answer