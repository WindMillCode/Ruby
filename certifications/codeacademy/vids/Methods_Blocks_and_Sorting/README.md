## Methods, Blocks, & Sorting in Ruby

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
* also know as the spaceship operator

```rb
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below

books.sort! { |firstBook, secondBook| secondBook <=>  firstBook   }


```
