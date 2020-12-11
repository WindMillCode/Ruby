## INTRODUCTION TO RUBY

### Data Types: Numbers, Strings, Booleans

__Numeric__ (any number),
__Boolean__ (which can be true or false)
__String__ (words or phrases like %{I'm learning Ruby!}).

* ruby is case sensitive

### Variables

* to make a variable
* local variables start with lowercase
```rb
puts my_num = 100
```

### Math

Addition (+)
Subtraction (-)
Multiplication (*)
Division (/)
Exponentiation (**)
Modulo (%)

* use these to do math on variables
```rb
puts sum =  13 + 379
puts product = 923 * 15
puts quotient = 13209 / 17
```
### 'puts' and 'print'

puts automatically places '\n' (newline)
print does not

### Everything in Ruby is an Object

* which means everything has methods

### The '.length' Method

* they are on strings

```rb
%{I love espresso}.length
```

### The '.reverse' Method

```rb
puts %{Eric}.reverse
```

### '.upcase' & '.downcase'


```rb
puts %{Eric}.upcase
puts %{Eric}.downcase
```
* you can also combine the methods

```rb
name = %{Harold}
puts name.downcase.reverse.upcase
```

### Single-Line Comments

* helps dev see what they did with their code
* to make a comment
```rb 
# im a comment
```


### Multi-Line Comments

* to make a multi line comment
```rb
=begin
I'm a comment!
I don't need any # symbols.
=end
```



