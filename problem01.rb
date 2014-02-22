sum = 0
max_value = 999
multiple1 = 3
multiple2 = 5
# (1...max_value).each do |num|
#   if num % multiple1 == 0
#     sum += num
#   elsif num % multiple2 == 0
#     sum += num
#   else
#   end
# end

# (1...max_value).each do |number|
#   sum += number if number % multiple1 == 0 || number % multiple2 == 0
# end


# (1...max_value)).reduce(0) { |sum, number|
#   number if number % multiple1 == 0 || number % multiple2 == 0
# }
# puts sum


def sum_to_n(num)
  # return (1..num).reduce(:+)
  return num * (num + 1) / 2
  # return 0 if num == 0
  # return num + sum_to_n(num-1)
end 

puts sum_to_n((max_value / 3).to_i) * 3 + sum_to_n((max_value / 5).to_i) * 5 - sum_to_n((max_value / 15).to_i) * 15

