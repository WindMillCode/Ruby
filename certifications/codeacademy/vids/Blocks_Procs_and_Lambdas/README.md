## Blocks, Procs, And Lambdas in Ruby

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