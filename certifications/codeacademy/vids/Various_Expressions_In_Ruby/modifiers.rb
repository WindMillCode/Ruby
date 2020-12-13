# puts "It's true!" unless true


=begin
language = "JS" 
case language
when "JS" 
  then puts "Websites!"
when "Python" 
  then puts "Science!"
when "Ruby" 
  then puts "Web apps!"
else 
  puts "I don't know!"
end
=end

=begin
favorite_book = "this is important"
favorite_book  ||= "modified"
puts favorite_book
=end

=begin
puts 1 < 2 ? "a" : "b"
=end


=begin
def multiple_of_three (n)
# or
# def multiple_of_three n
  puts %{Return last line of code}
  n+=5
  n % 3 == 0 ? "True" : "False"
end

puts multiple_of_three( 4)
# or
# multiple_of_three 4
=end

=begin
95..100
95.upto(100) { |num| print num, " " }
puts
100.downto(95) { |num| print num, " " }
=end

=begin
# print %{L}.methods
print %{L}.respond_to? :downto
=end

=begin
alphabet = ["a", "b", "c"]
alphabet.push("d") 
print alphabet
alphabet << ("d") 
puts
print alphabet
puts

caption = "A giraffe surrounded by "
caption += "weezards!" # Me, too!
print caption
puts
caption << "weezards!" # Me, too!
print caption
=end

=begin
p :String
print :String
=end


