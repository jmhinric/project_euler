factor_sums = {}

(1..9999).each do |num|
  factors = []
  (1...num).each do |n|
    factors << n if num % n == 0
  end
  factor_sums[num] = factors.reduce(0) { |sum, number| sum + number }
end

# factor_sums.each do |key, val|
#   puts "#{key}: " + val.to_s
# end

total = 0
puts "Total: #{total}"
factor_sums.each do |key, val|
  total += val if factor_sums[val] == key && key != val
  # if factor_sums[val] == key
  #   total += val
  #   total += val if val == key
  #   puts "Key: #{key}, Val: #{val}"
  #   puts "factor_sums(#{val}): #{factor_sums[val]}"
  #   puts "Total: #{total}"
  # end
end

puts total