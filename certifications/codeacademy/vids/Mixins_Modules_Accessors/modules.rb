# public memthod
=begin
class ClassName
  public
  def public_method
    p %{instances can access me}
  end
end
 
n = ClassName.new
n.public_method
=end

# private method
=begin
class ClassName
  private
  def private_method
    p %{ERROR}
  end
end
 
n = ClassName.new
n.private_method
=end

# attributes
=begin
class Person
  attr_reader :name
  attr_writer :job
  attr_accessor :both
  def initialize name,job,home
	@name = name
	@job = job
	@both = home
  end
end

a = Person.new %{Mack}, %{Attendant}, %{Idaho}
p a.name 
a.job = %{Masonry}
a.both = %{Utah}
p a.both
p a
=end

# create a module
=begin
module  MyLibrary
  PHYSICS = %{BIONICLE_LAWS} # and more data
end
PHYSICS = %{DC_LAWS}
p PHYSICS
p MyLibrary::PHYSICS
=end


# require
=begin
# p Math::PI
require 'date'
p Date.jd 2451944
=end

# include
=begin
module TestModule
  def jd num
    p num
  end
end

include TestModule
TestModule::jd 2451944
=end

# mixins
# =begin
module Languages
  FAVE = "Ruby"  # This is what you typed before, right? :D
end

module OS
  FAVE = "Linux"  # This is what you typed before, right? :D
end

class Master
  def initialize; end
  def victory
    puts Languages::FAVE
    puts OS::FAVE
  end
end

total = Master.new
total.victory
# =end

