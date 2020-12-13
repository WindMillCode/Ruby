:symbol


:puts 
=begin
puts :symbol.object_id == :symbol.object_id
puts %{string}.object_id == %{string}.object_id
=end

=begin 
puts %{string}.to_sym.class
puts %{string}.intern.class
=end


=begin
require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."
=end


my_hash =  {
  :one => 1,
  :two => 2,
}


puts my_hash


my_hash =  {
  one:  1,
  two:  2,
}


puts my_hash