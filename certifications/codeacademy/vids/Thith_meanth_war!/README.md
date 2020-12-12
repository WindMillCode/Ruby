## Thith meanth war!


* goal replace a substring with another stirng
```rb
print %{Thtring, pleathe!: }
user_input = gets.chomp
user_input.downcase!

if user_input.include? %{s}
  user_input.gsub! /s/, %{th}
else
  puts %{Nothing to do here!}
end
  
puts %{Your string is: #{user_input}}
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