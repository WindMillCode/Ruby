=begin
num_array = %w{ 1 2 3 4 5}.map! do |x| 
  x.to_i #Integer x
end

print num_array[4]

my_array =  [ %w{ 1 2 3 4 5},"joe", true, %w{ 1 2 3 4 5}]

print my_array
=end


my_hash = {
  :name => %{value1},
  :age => %{value2},
  :hungry => %{value3}
}

# puts my_hash[:name]
# puts my_hash[:age]
# puts my_hash[:hungry]


my_hash[%{area}] = %{value4}

# puts my_hash

my_hash.each { |x| print x }


