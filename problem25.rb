i = 2
fibos = [1, 1]

while fibos[i-1].to_s.length < 1000
  fibos << fibos[i-1] + fibos[i-2]
  i+=1
end

puts fibos[i-1].to_s.length
puts i
