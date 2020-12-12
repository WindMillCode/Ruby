=begin
counter = 1
while counter < 11
  puts counter
  #
  counter = counter + 1
  #
end


counter = 1
until counter > 10
  puts counter
  counter += 1
  # Add code to update 'counter' here!
end
=end

# for num in 1..10
#     puts num
# end


# i = 0
# loop do
#   i += 1
#   puts "#{i}"
#   break unless i < 10
# end


# for i in 1..10
# 	next unless i % 2 == 0
# 	puts i
# end

# a = %w{ 1 2 3 4 5}.map! do |x| x = Integer(x) end
# print a
# print %w{1 2 3 4 5}


# odds = %w{ 1 3 5 7 9}.map! do |x| x = Integer(x) end

# # Add your code below!
# odds.each do |item|
# 	puts item *2
# end


a = %w{1 2 3 4 5}
b = %w{2 4 6 8 10}
10.times do |x| puts %{#{a[x]},#{b[x]}} end

