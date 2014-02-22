require 'prime'
require 'pry'
include Math

# number for Project Euler is 600851475143

def find_largest_prime(number)
  current_number = number
  primes = (1..sqrt(number).to_i).select { |num| num.prime? }

  primes.each do |prime|
    puts "Current: #{current_number}"
    puts "Prime: #{prime}"
    while current_number % prime == 0
      current_number /= prime
      return prime if current_number == 1
    end
  end
end

puts find_largest_prime(600851475143)


