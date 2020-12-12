puts %{User input please}
user_input = gets.chomp
user_input.downcase!



if user_input.include? %{s}
	user_input.gsub! /s/, %{th}
elsif 
	puts %{no s found in the string}
end

puts user_input