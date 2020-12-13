# Ruby

* Ruby was designed by Yukihiro Matsumoto (often just called “Matz”) in 1995. 

## Introduction To Ruby

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

* for large numbers dont use , use _ 

```rb
100_000 
10_000_000
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
### [LAB Thith meanth war!](.\vids\Thith_meanth_war!\README.md) 


## Loops & iterators

### The 'While' Loop

* if u dont know how many times to repeat an action use a while loop
  * always make sure that the program stops, say if we have a counter, always increment the counter in the while loop or else the program will never finish 
```rb
counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end
```

### The 'Until' Loop
* reverse of while in the condition
  * while repeats till the condition is false
  * until repeats till the condition is true
```rb
counter = 1
until counter > 10
  puts counter
  counter += 1
  # Add code to update 'counter' here!
end
```

### The 'For' Loop
* when you know how many times to loop
  * 1...10 is known as a range
  * 1...10 is 1 - 9
  * 1..10 is 1 - 10
```rb
for num in 1..10
  puts num
end
```

### The Loop Method
* note { } are interchangeable with do,end for blocks with that we can write a loop block
```rb
i = 0
loop do
  i += 1
  print "#{i}"
  break if i > 5
end
```

### Next!
* used when we want to skip parts of the loop says we want even ## only we use next
```rb
for i in 1..5
  next unless i % 2 == 0
  print i
end
```

### Saving Multiple Values, Arrays
* to hold more than one item in a variable we use arrays
  * we dont need commas to sepearate them

```rb
a = %w{1 2 3 4}
```
* an array of string
```rb
%w{ ann mary jose marray}
```

* an array of symbols
```rb
%i{ ann mary jose marray}
```

* an array numbers
  * the do end same from the loop, 
```rb
%w{ 1 2 3 4 5}.map! do |x| x = x.to_i end
```
### Each method
* like the map method, loops through the array giving the contents of the array one by one
* map is meant to modify the items at that point loop is not

```rb
odds = %w{ 1 3 5 7 9}.map! do |x| x.to_i end

# Add your code below!
odds.each do |item|
  print item *2
end
```

### The .times Iterator
* its a looping method for  numbers try it 

```rb 
10.times do |x| print %{Chunky bacon! #{x}} end
```

## Data structures

### Creating Arrays

* you can put anything as an index as an array
```rb
num_array = %w{ 1 2 3 4 5}.map! do |x| x.to_i  end
```
* to sort an array
```rb
my_array.sort!
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


* the default value for a new key-value pair is nil
* tochange this

```rb
my_hash = Hash.new %{new default value}
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

### method Sort-By

* to sort by key or values from a hash
  * you can also place methods at the ends of functions, they behave as methods too

```rb
colors = { 
  "blue" => 3,
  "green" => 1,
  "red" => 2
}
colors = colors.sort_by do |color, count|
  count
end
.reverse!
```


## Various Expressions In Ruby

### Method Syntax

* to make a method
```rb
def welcome param1, param2
  # your code here
  # return if you want a value back
end
```

* to call a method
```rb
  welcome   arg1,arg2
```

* to express ...
  * the *in front of friends, means for any amount of args passed, they would end up in friends
```rb
def what_up greeting, *friends
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end


what_up "What up", "Ian", "Zoe", "Zenas", "Eleanor" 
```


### Blocks

* to make a block
```rb
do
  # your code here
end

{
	#your code here
}
```

* the difference between blocks and methods, once blocks are called they dont exist, methods you can call again


### The Combined Comparison Operator

* tell you how ruby would order say title of a books

```rb
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below

books.sort! { |firstBook, secondBook| secondBook <=>  firstBook   }
```


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

* previous syntax Ruby 1.9
```rb
my_hash =  {
  one:  1,
  two:  2,
}
puts my_hash
```

## The Zen Of Ruby

### Ruby is a Delight

*  programmer productivity over program optimization


#### Statement modfiiders
* one line  conditional statements

```rb
puts "It's true!" if true
puts "It's true!" if false
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


## Blocks, Procs, And Lambdas

* blocks are not functions they are just pieces of code

### Learning to Yield

* methods accept blocks because they have a way of transferring control to the block and back again using the yield keyword

```rb
def yield_name name
  puts "In the method! Let's yield."
  yield "Kim"
  puts "In between the yields!"
  yield name
  puts "Block complete! Back in the method."
end

yield_name ("Eric") { |n| puts "My name is #{n}." }
```

### Procs

__procs__ - saved blocks

* to create and use one
```rb
multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

print (1..100).to_a.select &multiples_of_3
```

* to call it standalone
```rb
hi = Proc.new do |x|
  puts %{Hello!}
end

hi.call # if needed -> a,b,c
```

### Symbols, Meet Procs

* to covernt from one class to another
```rb
strings = %w{ a  b c}
nums = strings.collect &:upcase
# ==> ["A", "B", "C"]

strings_array =  numbers_array.collect &:to_s
#>>["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]

```

### The Ruby Lambda

* they are like Procs
* how they work
```rb
def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })
```

* the difference proc will return on call thats why we use yield, lambda will go back into the code and finish 


```rb
def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc
# Output "Batman will win!" 

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda
# Output "Iron Man will win!"
```

### Overview

__block__ - is just a bit of code between do..end or {}. It’s not an object on its own, but it can be passed to methods like .each or .select.
__proc__ - is a saved block we can use over and over.
__lambda__ - is just like a proc, only it cares about the number of arguments it gets and it returns to its calling method rather than returning immediately.


## Object-oriented Programming I

### Why Classes?

* to create a class 
	* you need the intialize method
	* the @[var] are know as __instance variables__
```rb
class Language
  def initialize name, creator
    @name = name
    @creator = creator
  end
	
  def description
    p  %{I'm #{@name} and I was created by #{@creator}!}
  end
end

ruby = Language.new       "Ruby", "Yukihiro Matsumoto"
python = Language.new     "Python", "Guido van Rossum"
javascript = Language.new "JavaScript", "Brendan Eich"

ruby.description
python.description
javascript.description

=begin
Output
I'm Ruby and I was created by Yukihiro Matsumoto!
I'm Python and I was created by Guido van Rossum!
I'm JavaScript and I was created by Brendan Eich!

=end
```

### Data access
* with classes we can see there are global,local,class,and instance variables and methods
* __instance variables__ - beloong to an instance they start with @
	* you must use variables to access an instance var
* __class variables__ - belong to the class itself, they start with @@
* __global variables__ - defined at the top level of a Ruby program or inside a method class, mabye a block starts with $
* __local varialbes__ - when a var inside a method,class or block does not start with $ only the invoking object can use it and the objects it passed to
```rb
class Computer
  $manufacturer = %{Mango Computer, Inc.}
  @@files = {:hello => "Hello, world!"}
  
  def initialize username, password 
    @username = username
    @password = password
  end
  
  def current_user
    @username
  end
  
  def self.display_files
    @@files
  end
end

def call_me

	local_var = 2
	# Make a new Computer instance:
	hal = Computer.new "Dave", 12345 

	puts "Current user: #{hal.current_user}"
	# @username belongs to the hal instance.

	puts "Manufacturer: #{$manufacturer}"
	# $manufacturer is global! We can get it directly.

	puts "Files: #{Computer.display_files}"
	# @@files belongs to the Computer class.
end

call_me

# Error local to the call_me method
p local_var
```

### more various methods

* conditional execute a block
	* if there was no block given the yield will not execute
```rb
def meth 
  yield record if block_given?
end

meth 
```
### Inheritance 

* basic inheritance 
	* the class on the left of < is the Derived Class
	* the class first created is the Base Class
```rb
class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error
```


* to override a method in a Base class
```rb
class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!

class Dragon < Creature
  def fight
    return "Breathes fire!"
  end
end
```

* call an overwritten method 
	* same can be done with initalize
```rb
class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!

class Dragon < Creature
  def sit
    puts "Instead of breathing fire..."
    return super
  end
end
```