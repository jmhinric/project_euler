require 'pry'

def find_max_palindrome
  first_set = (100..999).to_a
  second_set = (100..999).to_a
  products = []

  first_set.each do |num1|
    second_set.each do |num2|
      products << num1 * num2 if is_palindrome?(num1 * num2)
    end
  end
  return products.max
end

def is_palindrome?(number)
  return number.to_s == number.to_s.reverse
end

puts find_max_palindrome





def max_palindrome(numbers)
  palindromes = []
  numbers.each do |number|
    if number.to_s == number.to_s.reverse
      palindromes << number
    end
  end
  return palindromes.max
end



def product_of_3_digits?(number)
  three_dig_numbers = (100..999).to_a
  three_dig_numbers.each do |num|
    return true if number % num == 0 
  end
  return false
end





# puts max_palindrome(compute_products)


test = 998001
while !is_palindrome?(test) || !product_of_3_digits?(test)
  test -= 1
end
puts test
