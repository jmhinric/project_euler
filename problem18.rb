# 2D array that holds the triangle of numbers
nums = [
  [75, 64, 82, 10, 65, 34, 67, 92, 33, 29, 14, 57, 48, 31, 23],
  [95, 47, 87, 47, 3, 63, 70, 70, 94, 51, 17, 29, 40, 4],
  [17, 35, 82, 75, 7, 16, 80, 16, 97, 68, 27, 87, 60],
  [18, 4, 23, 73, 6, 40, 37, 52, 39, 50, 69, 53],
  [20, 1, 77, 28, 83, 32, 91, 78, 58, 16, 38],
  [19, 2, 4, 56, 47, 43, 17, 43, 73, 93],
  [88, 65, 26, 33, 25, 73, 91, 30, 73],
  [99, 41, 72, 65, 77, 14, 67, 98],
  [41, 48, 44, 28, 17, 53, 70],
  [41, 71, 33, 38, 89, 9],
  [53, 11, 52, 68, 23],
  [70, 71, 4, 27],
  [91, 66, 98],
  [63, 62],
  [4]
]

# There are 2^14 ways to traverse the triangle
# First build an array of 0's and 1's representing these paths
two_fourteen = [[0], [1]]
(1..13).each do |num|
  zeros = []
  ones = []
  two_fourteen.each { |arr| zeros << arr + [0] }
  two_fourteen.each { |arr| ones << arr + [1] }

  two_fourteen = zeros + ones
end

# Map each path of 0's and 1's to the numbers in the triangle
paths = []
two_fourteen.each do |path|
  row = 0
  col = 0
  number_path = path.map do |i|      
      i == 0 ? col += 1 : row += 1
      nums[row][col]
  end
  paths << [75] + number_path
end

# Sum the path lengths
path_lengths = paths.map do |path|
  path.reduce(0) { |sum, num| sum + num }
end

# Return the maximum path length
puts path_lengths.max

