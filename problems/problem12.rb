def triangle_number(number)
  number * (number + 1) / 2
end

def number_of_factors(number)
  sqrt_num = Math.sqrt(number)
  factors = (1..sqrt_num).select {|n| number % n == 0}.length
  if number % sqrt_num == 0
    return factors * 2 - 1
  else
    return factors * 2
  end
end

def get_answer(range)
  i = 1
  
  while number_of_factors(triangle_number(i)) < range
    puts "#{i}: triangle(#{i}): #{triangle_number(i)}, factors: #{number_of_factors(triangle_number(i))}"
    i += 1
  end 
  puts "#{i}: triangle(#{i}): #{triangle_number(i)}, factors: #{number_of_factors(triangle_number(i))}"
end

get_answer(500)
