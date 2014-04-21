require 'pry'
require 'csv'

data = CSV.read('data.csv', { :col_sep => ' ' })

i = data.length - 2
while i >= 0
  data[i].each_with_index do |num, index|
    # binding.pry
    data[i][index] = num.to_i + data[i+1][index].to_i > num.to_i + data[i+1][index+1].to_i ? num.to_i + data[i+1][index].to_i : num.to_i + data[i+1][index+1].to_i
    # binding.pry
  end
  i -= 1
end

puts data[0]
