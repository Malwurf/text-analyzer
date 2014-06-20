text = ''
line_count = 0

File.open("text.txt").each do |line|
  line_count +=1
  text << line
end

total_characters = text.length
characters_without_space = text.gsub(/\s+/,'').length
words_count = text.split.length
sentence_count = text.split(/\!|\.|\?/).length
paragraph_count = text.split(/\n\n/).length
average_words_sentence = words_count/sentence_count
average_sentence_paragraph = sentence_count/paragraph_count

puts "Liczba wierszy w tekście - #{line_count}"
puts "Liczba znaków w tekście - #{total_characters}"
puts "Liczba znaków w tekście bez spacji - #{characters_without_space}"
puts "Liczba spacji - #{total_characters-characters_without_space}"
puts "Liczba słów w tekście - #{words_count}"
puts "Liczba zdań w tekście - #{sentence_count}"
puts "Liczba akapitów w tekście - #{paragraph_count}"
puts "Średnio zdań w akapicie - #{average_sentence_paragraph}"
puts "Średnio słów w zdaniu - #{average_words_sentence}"