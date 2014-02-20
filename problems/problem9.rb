def find_answer
  (333...500).to_a.each do |c|
    (1...c).each do |b|
      (1...b).each do |a|
        if a**2 + b**2 == c**2 && a + b + c == 1000
          puts "#{a} #{b} #{c}"
          puts a * b * c
        end
      end
    end
  end  
end

find_answer

