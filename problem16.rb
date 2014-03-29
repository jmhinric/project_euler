num = (2 ** 1000).to_s.split("")
# puts num
answer = num.reduce(0) {|sum, num| sum + num.to_i}

puts answer
