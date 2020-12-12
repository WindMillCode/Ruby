# Control Flow In Ruby


## conditional operators


```rb
if x < y  # Assumes x and y are defined
  puts "x is less than y!"
elsif x > y
  puts "x is greater than y!"
else
  puts "x equals y!"
end


hungry = false
unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end
```
## comparison operators

* equal == 
* not equal !=
* Less than: <
* Less than or equal to: <=
* Greater than: >
* Greater than or equal to: >=

* in a new file type the expected result
```rb

test_1 = 77 != 77
puts %{ 77 != 77}
gets
puts test_1  

test_2 = -4 <= -4
%{-4 <= -4}
gets
puts test_2  

test_3 = -44 < -33
%{-44 < -33}
gets
puts test_3  

test_4 = 100 == 1000
%{100 == 1000}
gets
puts test_4  


```

## boolean operators

### AND
* in a new file ask for the expected result
```rb
boolean_1 = 77 < 78 && 77 < 77
puts %{77 < 78 && 77 < 77}
gets
puts boolean_1

boolean_2 = true && 100 >= 100
puts %{true && 100 >= 100}
gets
puts boolean_2 
 

boolean_3 = 2**3 == 8 && 3**2 == 9
puts %{2**3 == 8 && 3**2 == 9}
gets
puts boolean_3
```

### OR
* in a new file write the expected result
```rb
boolean_1 = 2**3 != 3**2 || true
puts %{2**3 != 3**2 || true}
gets
puts boolean_1  

boolean_2 = false || -10 > -9
puts %{false || -10 > -9}
gets
puts boolean_2   

boolean_3 = false || false
puts %{false || false}
gets
puts boolean_3  
```

### NOT
```rb
boolean_1 = !true
puts %{!true}
gets
puts boolean_1  

boolean_2 = !true && !true
puts %{!true && !true}
gets
puts boolean_2  

boolean_3 = !(700 / 10 == 70)
puts %{!(700 / 10 == 70)}
gets
puts boolean_3  
```



### COMPLEX
```rb
boolean_1 = (3 < 4 || false) && (false || true)
puts %{(3 < 4 || false) && (false || true)}
gets
puts boolean_1 


boolean_2 = !true && (!true || 100 != 5**2)
puts %{!true && (!true || 100 != 5**2)}
gets
puts boolean_2 


boolean_3 = true || !(true || false)
puts %{true || !(true || false)}
gets
puts boolean_3 


``