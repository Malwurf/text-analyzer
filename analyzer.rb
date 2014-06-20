text = ''
line_count = 0
File.open("text.txt").each do |line|
  line_count +=1
  text << line
end
puts "Liczba wierszy w tekście - #{line_count}"