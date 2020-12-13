##  Symbols
* they are unique in the program, its not the data that its important its the name of the symbol

* the symbol has the same object_id
```rb
puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

```

* to convert to a symbol

```rb
%{string}.to_sym
%{string}.intern

# Output = :string
```

* symbol hashing is faster than string hashing
```rb
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
```

* current syntax


```rb
my_hash =  {
  :one => 1,
  :two => 2,
}
puts my_hash
```

* previous syntax (Ruby 1.9)
```rb
my_hash =  {
  one:  1,
  two:  2,
}
puts my_hash
```