## PUTTING THE FORM IN FORMATTER

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
