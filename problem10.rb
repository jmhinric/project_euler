require 'prime'

def get_primes(range)
  return (1...range).select { |n| n.prime? }
end

def sum_of_primes(primes)
  return primes.reduce(0) { |sum, p| sum + p }
end

puts "Started at #{Time.now}."
puts sum_of_primes(get_primes(2_000_000))
puts "Finished at #{Time.now}."
