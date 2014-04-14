require 'pry'

# Find the factors of a number
def factors(number)
  factors = []
  (1..number ** 0.5).each do |num|
    if number % num == 0
      factors << num
      factors << number / num unless number / num == number
    end
  end
  factors.uniq
end

# Find the abundant numbers up to 28123
abundants = []
(1..28123).each do |num|
  sum = factors(num).reduce(0) { |sum, n| sum + n } 
  abundants << num if sum > num
end

# Find the sums of all combinations of the abundant numbers
sums = []
abundants.each do |a|
  abundants.each { |ab| sums << (a + ab) }
end
sums.uniq!

# Find which numbers up to 28123 aren't in the sums array
non_sums = []
non_sums = (1..28123).to_a - sums

# Return the sum of the qualifying numbers
puts non_sums.reduce(0) { |sum, n| sum + n }
