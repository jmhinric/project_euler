def factors(number)
  factors = (1...number).select {|n| number % n == 0}
end


abundants = []
(1..28123).each do |num|
  sum = factors(num).reduce(0) { |sum, n| sum + n } 
  abundants << num if sum > num
end

non_sums = []
(1..28123).each do |num|
  abundants.each do |n|
    non_sums << num if !abundants.include?(num - n)
  end
end

puts non_sums.reduce(0) { |sum, n| sum + n }
