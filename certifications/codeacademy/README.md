# Ruby

* Ruby was designed by Yukihiro Matsumoto (often just called “Matz”) in 1995. 

## Introduction to ruby

### Data Types: Numbers, Strings, Booleans

__Numeric__ (any number),
__Boolean__ (which can be true or false)
__String__ (words or phrases like %{I'm learning Ruby!}).

* ruby is case sensitive

### Variables

* to make a variable
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

### Variables

* local variables start with lowercase
* to make a variable
```rb 
my_age = 32
```

### [LAB INTRODUCTION TO RUBY](./vids/Introduction_to_Ruby/README.md)


## Putting the form in formatter

### Prompting the User


* this allows u to receive input from the user
```rb
print %{What's your first name?}
first_name = gets.chomp
```

### Printing the Output
* to use user input in our code  

```rb
first_name = "Kevin"
puts %{Your name is #{first_name}!}
# output Your name is Kevin 
```

### Formatting with String Methods

* we can use capitalize 

```rb 
first_name.capitalize!
```

### [LAB PUTTING THE FORM IN FORMATTER](./vids/Putting_The_Form_In_Formatter/README.md)

## Control flow in ruby

### How It Works

```rb
print "Integer please: "
user_num = Integer(gets.chomp)

if user_num < 0
  puts "You picked a negative integer!"
elsif user_num > 0
  puts "You picked a positive integer!"
else
  puts "You picked zero!"
end
```


### If
* indent by 2 spaces
* if the condition is true execute the code indented by 2 spaces till the end block

```rb
if true
  puts "true"
end
```

### Else
* indent by 2 spaces
* when the if condition is false, executed the code in the else block indented by 2 spaces till the end block 

```rb
if 1 > 2
  print "I won't get printed because one is less than two."
else
  print "That means I'll get printed!"
end
```


### Elsif
* if you have more than one condtion use elsif
```rb
if x < y  # Assumes x and y are defined
  puts "x is less than y!"
elsif x > y
  puts "x is greater than y!"
else
  puts "x equals y!"
end
```

### Unless 
* * indent by 2 spaces
* the opposite of if
* when the condition is false, executed the code in the unless block indented by 2 spaces till the end block 
```rb
hungry = false
unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end
```

### Equal or Not?
* the answer will be true or false
* to ask  if equal 
```rb
2 == 3 
```

* to ask if not equal 
```rb
2 != 3 
```

### Less Than or Greater Than
* Less than: <
* Less than or equal to: <=
* Greater than: >
* Greater than or equal to: >=

* same logic as above

### And

__and (&&)__ - boolean operator - when both expression on either side of && are true. 


### Or

__or (||)__ = boolean operator- when either expression on either side of && are true 

### Not

__not (!)__ - vice-versa of the final result

### Combining Boolean Operators
* use parentheses to help combine expressions


### [Lab Control Flow In Ruby](./vids/Control_Flow_In_Ruby/README.md)


## Thith meanth war!


* replace a substring with another stirng
```rb
print "Thtring, pleathe!: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts "Nothing to do here!"
end
  
puts "Your string is: #{user_input}"
```

### Getting User Input


```rb
puts %{User input please}
user_input = gets.chomp
```

### Downcase!
* use the (!) to modify in place
```rb
user_input.downcase!
```

### Setting Up the 'If' Branch, Part 1

* to check for s in the string
```rb

if user_input.include? %{s}

end
```

* to replace s with another string

```rb
user_input.gsub! /s/, %{th}
```

* else statement
```rb
if user_input.include? %{s} 
  user_input.gsub! /s/, %{th}
else
  puts %{not found}
end
```