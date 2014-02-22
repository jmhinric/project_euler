def triangle_number(number)
  number * (number + 1) / 2
end

# Version that ran for over an hour and only reached i ~ 5000 (answer is at i = 12,375)
# def number_of_factors(number)
#   factors = (1..number).select {|n| number % n == 0}
#   return factors.count
# end

# Exponentially faster version! Took 25 seconds!
def number_of_factors(number)
  sqrt_num = Math.sqrt(number)
  factors = (1..sqrt_num).select {|n| number % n == 0}
  number_of_factors = factors.count
  if number % sqrt_num == 0
    return number_of_factors * 2 - 1
  else
    return number_of_factors * 2
  end
end

def get_answer(range)
  i = 1
  
  while number_of_factors(triangle_number(i)) < range
    print Time.now.strftime("%l:%M:%S:%L ")
    puts "#{i}: triangle(#{i}): #{triangle_number(i)}, factors: #{number_of_factors(triangle_number(i))}"
    i += 1
  end 
  puts "#{i}: triangle(#{i}): #{triangle_number(i)}, factors: #{number_of_factors(triangle_number(i))}"
end

get_answer(500)
