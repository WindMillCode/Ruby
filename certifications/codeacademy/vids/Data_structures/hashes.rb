puts %{Give me a string please}
# text = gets.chomp
text = %{Give me me a string please}
words = text.split

frequencies = Hash.new 0
words.each do |x|
  frequencies[x] += 1
end
frequencies = frequencies.sort_by  do |k,v|
  v
end
.reverse!

print frequencies