## Various Expressions In Ruby

### Ruby is a Delight

*  programmer productivity over program optimization


#### Statement modfiiders
* one line  conditional statements

```rb
puts "It's true!" if true
puts "It's true!" unless ture
if true ? 1:2
```

#### Case statements
* multi line conditional

```rb
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
```

* to assign a a vairable only if it has a value
```rb
favorite_book = nil
puts favorite_book
# Output
favorite_book ||= "Cat's Cradle"
puts favorite_book

# Output "Cat's Cradle"

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

# Output "Cat's Cradle"
```

* ternary operator
```rb
puts 1 > 2 ? "a" : "b"
```

* implicit return 
	* will return result of the expression 
```rb
def multiple_of_three(n)
  n % 3 == 0 ? "True" : "False"
end
```

* to print a certain range
	* upto, downto
```rb
95.upto(100) { |num| print num, " " }

%{L}.upto %{P} do |x|
  puts x
end
```

* to see if a method is on an object
```rb
age = 26
puts age.respond_to? :next
puts age.next
```

* concentation operator
```rb
alphabet = ["a", "b", "c"]
alphabet.push("d") # Update me!
alphabet << "d"
caption = "A giraffe surrounded by "
caption += "weezards!" # Me, too!
caption << "weezards!"
```


* use p over print
```rb
p :String
# Output :String
 
print :String
# Output String
```