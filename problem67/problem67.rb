require 'pry'
require 'csv'

data = CSV.read('data.csv', { :col_sep => ' ' })

# Change each element's data type from string to integer
data = data.map do |arr|
  arr.map { |num| num.to_i }
end

# Find the max sum

i = data.length - 2

# 
while i >= 0
  data[i].each_with_index do |num, index|
    sum1 = num + data[i + 1][index]
    sum2 = num + data[i + 1][index + 1]
    data[i][index] = sum1 > sum2 ? sum1 : sum2
  end
  i -= 1
end

puts data[0]