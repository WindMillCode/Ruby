# Basic Class
=begin
class MyClass
end
=end











# initialize
=begin
class MyClass
  def initialize name,profession
    @class = name
    p %{we have a new profession it is }
  end
end
=end

# a new instance
=begin
arc = MyClass.new %{Jake}, %{Carpenter}
=end

# methods
=begin
class MyClass
  def initialize name,profession
    @name = name
    p %{we have a new profession it is #{profession}}
  end

  def print_name
    @name
  end

  def print_profession
    @profession
  end  
end

arc = MyClass.new %{Jake}, %{Carpenter}
gib = MyClass.new %{Jake}, %{Lawyer}
arc.print_name 
arc.print_profession
=end


# global variables
=begin
class MyClass
  $total_professions = 3
end

# arc = MyClass.new
p $total_professions
=end

# class variables
=begin
class MyClass
  @@classname = "Seven"
  def initialize name,profession
    @name = name
    p %{we have a new profession it is #{}}
  end

  def names
    p @@classname
    p @name
  end
end

arc = MyClass.new
arc.names
# p @@classname
=end

# Inheritance
=begin
class Creature
  def initialize name,profession
    @name = name
    p %{we have a new profession it is #{profession} }
  end
end

class Dinosaur < Creature
end

class TRex < Dinosaur
end

jak = Dinosaur.new %{Tom}, %{Bucket}
=end


# Override
=begin
class MyClass
  def initialize name,profession
    @name = name
    p %{we have a new profession it is }
  end
end

class Derived < MyClass
  def initialize door
    @door = door
    p %{Override base class}
  end  
end

jak = Derived.new %{Tom} 
=end


# Complement
=begin
class MyClass
  def initialize name,profession
    @name = name
    return %{we have a new profession it is }
  end
end

class Derived < MyClass
  def initialize name,profession,door
    @door = door
    p super name,profession
    p "more code"
  end  
end

jak = Derived.new %{Tom}, %{Janitor},%{Bucket}
=end
