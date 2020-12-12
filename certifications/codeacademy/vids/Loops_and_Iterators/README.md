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

#### Range Data Type
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
%w{ 1 2 3 4 5}.map! do |x| x = Integer(x) end
```
### Each method
* like the map method, loops through the array giving the contents of the array one by one
* map is meant to modify the items at that point loop is not

```rb
odds = %w{ 1 3 5 7 9}.map! do |x| x = Integer(x) end

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

