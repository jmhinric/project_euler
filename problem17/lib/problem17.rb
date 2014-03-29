require 'pry'

def write_number(number)
  num = number.to_s

  number_key = {
    "1" => "one",
    "2" => "two",
    "3" => "three",
    "4" => "four",
    "5" => "five",
    "6" => "six",
    "7" => "seven",
    "8" => "eight",
    "9" => "nine",
    "10" => "ten",
    "11" => "eleven",
    "12" => "twelve",
    "13" => "thirteen",
    "14" => "fourteen",
    "15" => "fifteen",
    "16" => "sixteen",
    "17" => "seventeen",
    "18" => "eighteen", 
    "19" => "nineteen", 
    "20" => "twenty",
    "30" => "thirty",
    "40" => "forty",
    "50" => "fifty",
    "60" => "sixty",
    "70" => "seventy",
    "80" => "eighty",
    "90" => "ninety"
  }

  case num
  when "1".."20"
    number_key[num]
  when "20"..."100"
    if num[1] == "0"
      number_key[num]
    else
      number_key[(num[0] + "0")] + "-" + number_key[num[1]]
    end
  when "100"..."1000"
    if num[2] == "0" && num[1] == "0"
      number_key[num[0]] + " hundred"
    elsif num[2] == "0"
      number_key[num[0]] + " hundred and " + write_number(num[1] + num[2])
    else
      write_number(num[0]) + " hundred and " + write_number((num[1] + num[2]).to_i.to_s)
    end
  when "1000"
    return "one thousand"
  end
end


def number_of_letters(word)
  word.gsub(" ", "").gsub("-", "").split("").count
end


def count_all_letters
  numbers_as_words = (1..1000).map do |num|
    write_number(num.to_s)
  end

  numbers_as_words.map { |num| number_of_letters(num) }.reduce(0) { |sum, n| sum + n }
end

puts count_all_letters









