## Data structures in Ruby

### Creating Arrays

* you can put anything as an index as an array
```rb
num_array = %w{ 1 2 3 4 5}.map! do |x| 
  x.to_i #Integer x
end
```

### access by index

* access start at 0
```rb 
num_array.at 0 
# output 1
```

### Nested arrays
* need square brackets
```rb
[ %w{ 1 2 3 4 5}, %w{ 1 2 3 4 5}]
```


###   Introduction to Hashes
* key value pairs it lookes like below
```rb
my_hash = {
  :key1 => %{value1},
  :key2 => %{value2},
  :key3 => %{value3}
}

my_hash = Hash.new
```

* to access hash values
```rb
puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]
```

* to add values

```rb
my_hash[%{name}] = %{Andy}
```

### Iterating through hashes
* one parameter represnts the key the other reps the value
```rb
family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

family.each { |x, y| puts "#{x}: #{y}" }
```

* if you put one you get an array each with the key and value
```rb
family.each { |x| puts x }
```

