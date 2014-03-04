def collatz_seq_length(number)
  num = number
  if num % 2 == 0
    num /= 2
  else
    num = num * 3 + 1
  end

end