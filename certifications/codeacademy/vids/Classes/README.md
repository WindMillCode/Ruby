## Classes in Ruby

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