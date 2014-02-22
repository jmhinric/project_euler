fibs = [0, 1]
sum = 0
count = 2

while fibs[count-1] < 4_000_000
  fibs[count] = fibs[count - 1] + fibs[count - 2]

  if fibs[count] % 2 == 0 && fibs[count] < 4_000_000
    sum += fibs[count]
  end

  count += 1
end

puts sum