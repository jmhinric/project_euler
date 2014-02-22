require 'prime'

def find_answer(range)
  primes = (1..range).select { |num| num.prime? }
  answer = 1

  primes.each do |num|
    i = 1
    while num ** i <= range
      i += 1
    end
    answer *= num ** (i - 1)  
  end
  
  return answer
end

print "Enter range: "
range = gets.chomp.to_i

puts "Final answer is: #{find_answer(range)}"