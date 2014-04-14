a = [0,1,2,3,4,5,6,7,8,9]

p = a.permutation.to_a

puts p.map { |a| a.join("").to_s }.sort[999999]