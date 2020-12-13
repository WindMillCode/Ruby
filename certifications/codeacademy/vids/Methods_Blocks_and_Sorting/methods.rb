=begin
# def welcome profession, last_name
#   puts %{Greetings dr #{last_name}}
#   puts %{Your profession is #{profession}}
# end





# child = %w{ Tommy, sick}


# welcome %{Pediatrician}, %{Smith}

# prescription = %{Take 2 pills}


# unless child[1] == %{sick}
#   puts %{doctor says you can go play}
# else  
#   welcome  %{Cardiologist}, %{O'Conor}
#   puts prescription
# end

# unless child[1] == %{sick}
#   puts %{doctor says you can go play}
# else  
#   welcome  %{Neurologist}, %{Ashanti}
#   puts prescription
# end


# def what_up  *friends
#   print friends
#   friends.each { |friend| puts "What up, #{friend}!" }
# end


# what_up  "Ian", "Zoe", "Zenas", "Eleanor" 
=end

=begin
names = ["Ian", "Zoe", "Zenas", "Eleanor"]
names.map! do |x|
  x.upcase
end

print  names
=end



books = ["Charlie and the Chocolate Factory", 
"War and Peace", 
"Utopia", 
"A Brief History of Time", 
"A Wrinkle in Time"]


# print   "War and Peace" <=>  "War and Peace"

# To sort our books in ascending order, in-place
# books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below

books.sort! { |firstBook, secondBook| secondBook <=>  firstBook}
print books


