##  Mixins,Modules and Accessors in Ruby

### Need-to-Know Basis

* __public__ - methods other developers can use to get work done
* __private__ - methods that will break if developers tamper with them

* to create a public method 
```rb
class ClassName
  # Some class stuff
  public
  def public_method
    # public_method stuff
  end
end
```

* to create a private method
```
class ClassName
  # Some class stuff
 
  private
  # Private methods go here
  def private_method; end
end
```

* if you want to access attributes on the class
	* attr_reader, to read the data at the attribute
	* attr_writer, to write data to the attribute
	*attr_accessor to do both
```rb
class Person
  attr_reader :name
  attr_writer :job
  attr_accessor :both
  def initialize name,job,both
	@name = name
	@job = job
	@both = both
  end
end

let a = new Person %{Mack}
p a.name 
a.job = %{Bryce}
p a.both
a.both = %{Easier}
```



### Modules

* __modules__ - like a class a toolbox of methods and important attributes
* cant create instances and cannot have subclasses

* to create a module
```rb
module  MyLibrary
#   FAVE_BOOK = %{BIONICLE} and more data
end
```

* with modules we can have namespaceing so we dont confuse Math::PI and Circle::PI  for example
```rb
PI = 3.14
p Math::PI
p PI
```

* some modules are already avaiable in the global namspace others need to be required
* so if we need the Date module , we lowercase the name
```rb
require 'date'
```

* if we use include we no longer have to say Math::PI,we can just say PI, however we keep the name as is no string
```rb

include Time
now # instead of Time.now
```

### Imitating Multiple Inheritance

* classes with multiple parents are bad, but now because of namespacing, we can do this with __mixins__ modules and classes coming together to make a meaningful structure


* include allows Classes to use modules at the instance, level __extend__ keyword allows the class to use modules in the class level	


```rb
module C
	VALUE =%{ASA}
end
class M
  include C
  def initalize
	p VALUE
  end
end

class N
  def initalize
	p C::VALUE
  end
end

m =M.new
n = N.new
```
