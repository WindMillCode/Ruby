installing ruby on windows 
https://rubyinstaller.org/downloads/


setup
install Ruby 2.6.5-1x64 with MSYS2 , try to avoid folders with spaces
add RUBY executables to PATH
assoicatie .rb and .rbw 

support group http://groups.google.com/group/rubyinstaller
wiki https://wiki.github.com/larskanis/rubyinstaller2 


ruby install in C:\Ruby26-x64
MSYS

so for minor updates just run the new isntaller 
if major updates do not place in same directory 


learning ruby 
http://rubylearning.com/satishtalim/first_ruby_program.html

two line indentation
# p001hello.rb  
puts 'Hello'

to print to stdout
puts 'string'

to call a method
foobar a, b, c

ruby is a scripting language


int division gives round to the nearest whole nearest ##
photo rubyclasses


operators and precedence 


modulus operators behaves weird 

puts (5 % 3)     # prints  2  
puts (-5 % 3)    # prints  1  
puts (5 % -3)    # prints -1  
puts (-5 % -3)   # prints -2  

the result's sign is the same as the 2nd operand '

if with && 
 if a = f(x) and b = f(y) and c = f(z) then d = g(a,b,c) end  



or assignments 
@variable ||= "default value"  


and assignments
a = 2 and b = 3 and c = 5


Strings


or use %{}
  to escape
  'escaped\'ssdada'

  to display 3 times
  puts 'Hello' * 3  

  to run a process by OS 
  puts `dir`
  system("tar xzf test.tgz") # => true  
    true if executed properly
    false exited nonzero exit status
    nil if command failed to execute 


So nil represents an empty return value, although it can be hidden in the char standard ruby is using 


    multi line strings 
    
a = <<END_STR  
This is the string  
And a second line  
END_STR
   
a = 'hello '  
a<<'world. 
I love this world...'      
          
  Global vars 
  $ prefixed 
  availble everywhere in program 
  never go out scope

  Built-in global vars
  $0  - file name ruby's exe'cuting
  $: - paths ruby searches when loading extr


  Getting input
  puts "In which city do you stay?"  
    STDOUT.flush  
    city = gets
    puts "The city is " + city  
  file input.rb


  Variables 
  local, has letters and underscoe
  instance var starts with @

  Constants
  uppercase start with vars 

  Methods names
  should being with lowercase or underscore end wtih  "?", "!" and "=" 

  # Ruby is dynamic  
x = 7           # integer  
x = "house"  # string  
x = 7.5        # real  
  
# In Ruby, everything you manipulate is an object  
'I love Ruby'.length 

    types
    Numeric
      Fixnum
      integer
      Float
      DIG is a class constant that gives precision of Float in decimal digits. 
      MAX is another class constant that gives the largest Float.      
    String, Array, Hash, Object, Symbol, Range, and RegExp.

    to access class constants 
    puts Float::MAX
    puts [Type]::[class constant name ]

    in ruby everything is an object there are no primitives or data types 
    5.times { puts "Mice!\n" }




using capybara, percy and browserstack for e2e

    if you are not in a object your ususally in main 
    puts self is the name of the object
    puts self returns main

Making methods 

  method.rb

  can do this 
    def mtd arg1="Dibya", arg2="Shashank", arg3="Shashank"
      "#{arg1}, #{arg2}, #{arg3}."  
    end 
  
  this is interpolation

  puts "100 * 5 = #{100 * 5}"  
  

  Alias 
    copyies a method
    cant assignments objects 

    to accept any amnt of vars 

    def foo(*my_string)  
        my_string.inspect  
      end  
      
  Parameters are placed left to right 
  def mtd(a=99, b=a+1) 

  to pass by refernce 

  def downer(string)  
    string.downcase!  
  end 
  a = "HELLO"  
  downer(a)      # -> "hello"  
  puts a         # -> "hello" 
  
  to pass by value 

  def downer(string)  
    string.downcase  
  end  
  a = "HELLO"  
  downer(a)      # -> "hello"  
  puts a         # -> "HELLO"  


  Bang(!) methods 
  methods that modify an object in place 

  Question(?) methods
  methods that answer a question ('if arr is empty')


  ri and rDoc are tools to help understand ruby 

  every time a string literal is used in an assignment or as a parameter, a new String object is created.

String.methods.sort
shows you a list of methods that the Class object String responds to.

String.instance_methods.sort
This method tells you all the instance methods that instances of String are endowed with.
  
Comparing strings 
  comp strings 

  To create an array 

  names2 = %w{  ann richard william susan pat }  
  puts names2[0] # ann  
  puts names2[3] # susan 
  
ruby here uses default UTF-8

# λ is the Greek character Lambda here
puts "λ".length     # => 1
puts "λ".bytesize   # => 2
puts "λ".encoding   # => UTF-8



 Ruby Constructs

var = 5  
if var > 4  
  puts "Variable is greater than 4"  
  puts "I can have multiple statements here"  
  if var == 5  
    puts "Nested if else possible"  
  else  
    puts "Too cool"  
  end  
else  
  puts "Variable is not greater than 5"  
  puts "I can have multiple statements here"  
end  
  

if name == 'Satish'  
    puts 'What a nice name!!'  
  elsif name == 'Sunil'  
    puts 'Another nice name!'  
  end

unless is the opposite of if 
    
    unless ARGV.length == 2  
        puts "Usage: program.rb 23 45"  
        exit  
      end      

Conditional

(condition) ? (result if condition is true) : (result if condition is false)  

Statement modifiers 

puts "Enrollments will now Stop" if participants > 2500  

Case 

year = 2000  
leap = case  
       when year % 400 == 0 then true  
       when year % 100 == 0 then false  
       else year % 4   == 0  
       end  
puts leap  


In Ruby, nil and false evaluate to false, everything else (including true, 0) means true.

# NIL is synonym for nil  
puts NIL.class # NilClass  
puts nil.class # NilClass  
puts nil.object_id # 4  
puts NIL.object_id # 4  
  
# FALSE is synonym for false  
puts FALSE.class # FalseClass  
puts false.class # FalseClass  
puts false.object_id # 0  
puts FALSE.object_id # 0  


Code Blocks are  closures
braces for single line do .. end for multiline 
    
another way to have parameters 

=begin  
Ruby Code blocks are chunks of code between braces or  
between do..end that you can associate with method invocations  
=end  
def call_block  
puts 'Start of method'  
# you can call the block using the yield keyword  
yield  
yield  
puts 'End of method'  
end  
# Code blocks may appear only in the source adjacent to a method call  
call_block {puts 'In the block'}  
see the code in the call block amnt of times yield is there

Examples 

    # You can provide parameters to the call to yield:  
    # these will be passed to the block  
    def call_block  
        yield 'hello', 99  
      end  
    call_block {|str, num| puts str + ' ' + num.to_s}  



    def try  
    if block_given?  
        yield  
    else  
        puts "no block"  
    end  
    end  
    try # => "no block"  
    try { puts "hello" } # => "hello"  
    try do puts "hello" end # => "hello"        


        x = 10  
        5.times do |x|  
          puts "x inside the block: #{x}"  
        end  
          
        puts "x outside the block: #{x}" 
        
        x's are different' 


        x = 10  
        5.times do |y|  
          x = y  
          puts "x inside the block: #{x}"  
        end  
          
        puts "x outside the block: #{x}"  
        
        
        x's are same' 


        x = 10  
        5.times do |y; x|  
          x = y  
          puts "x inside the block: #{x}"  
        end  
        puts "x outside the block: #{x}" 
        
        
        x' are different' 


Arrays 

  to add to Arrays
  # nil is Ruby's way of saying nothing  
  puts name[4]  
  # we can add more elements too  
  name[4] = 'Pune' 
  puts name[4] 
  # we can add anything! 
  name[5] = 4.33 
  puts name[5] 
  # we can add an array to an array 
  name[6] = [1, 2, 3] 
  puts name[6]   

   
    # some methods on arrays 
    newarr = [45, 23, 1, 90] 
    puts newarr.sort 
    puts newarr.length 
    puts newarr.first 
    puts newarr.last 
    [1,2,3,4].reverse_each


    ##to iterate
    locations = ['Pune', 'Mumbai', 'Bangalore'] 
 
    locations.each do |loc| 
      puts 'I love ' + loc + '!' 
      puts "Don't you?"  
    end  
    
  
# delete an entry in the middle and shift the remaining entries  
locations.delete('Mumbai')      


## to return an array from a fn 
  def mtdarry  
    10.times do |num|  
      square = num * num  
      return num, square if num > 5  
    end  
  end  
    
  # using parallel assignment to collect the return value  
  num, square = mtdarry  
  puts num  
  puts square

  times method iterates ## from 0 to NumberObject-1 

  Parallel Assignment 

  a = 1, 2, 3, 4 # => a == [1, 2, 3, 4]  
  b = [1, 2, 3, 4] # => b == [1, 2, 3, 4] 
  
  if the items are unequal
    a, b = 1, 2, 3, 4 # => a == 1, b == 2  
    c, = 1, 2, 3, 4 # => c == 1 

  ENV vars
  ENV is a Hash

  to see the ENV 
  ENV.each {|k,v| puts "#{k}: #{v}"}  


  we have access to all the env vars on the computer 
 
  what ruby uses 
  env.jpg

  Ruby child process may write to an ENV var but the parent doesnt know abt it 

  to access commmand line args
  f = ARGV
  puts f  
 
  file:getoptlong.rb

  to convert to Array 
  Array(str).class

  Ranges 
  express a sequence 

  to convert from range to list 
  (1..10).to_a -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
  (1...10).to_a # -> [1, 2, 3, 4, 5, 6, 7, 8, 9] 

    some range methods 
    digits = -1..9  
    puts digits.include?(5)          # true  
    puts digits.min                  # -1  
    puts digits.max                  # 9  
    puts digits.reject {|i| i < 5 }  # [5, 6, 7, 8, 9]  


    Comparison with ranges 
    (1..10) === 5       -> true  
    (1..10) === 15      -> false  
    (1..10) === 3.14159 -> true  
    ('a'..'j') === 'c'  -> true  
    ('a'..'j') === 'z'  -> false  


    Symbols 
    its name is prefixed /w a colon 

    puts "string".object_id  
    puts :symbol.object_id  
    
    If the contents (the sequence of characters) of the object are important, use a string
    If the identity of the object is important, use a symbol
    
    symbols are used as a consistent name with in code


    puts "string".to_sym.class # Symbol  
    puts :symbol.to_s.class    # String     



    Hashes - associative arrays 
    key value pairs 

    use symbols as hash keys 
    people = Hash.new  
    people[:nickname] = 'IndianGuru'  
    people[:language] = 'Marathi'  
    people[:lastname] = 'Talim'  
      
    puts people[:lastname] # Talim      

    {:nickname=>"IndianGuru", :language=>"Marathi", :lastname=>"Talim"}  
    {nickname: 'IndianGuru', language: 'Marathi', lastname: 'Talim'}  

    for ##  but try not to do this 
    hash = {1 => 'one'} # will work  

    Random Numbers

    random.rb


    Files 

    readwrite.rb


    Read and write text files 
    r reads at beginning
    w truncates the whole file starts at 0 with no nil bytes

    to convert encoding 
    File.open('p014constructs.rb', 'r:UTF-16LE:UTF-8') do |f1|  
    
    more info 
    http://ruby-doc.org/core-2.3.0/File.html
    
    always close an openend file 

    Traverse a directory

    traverse.rb 

    To access a file randomly and display a certain truncation of the file 

    file randomFile.rb 

    Object Serialization

    Java serializes objects, store them anywhere and loads them when needed
    in ruby this is called Marshalling 
    you save w/ Marshal.dump
    you load with Marshal.load 



    Regular Expressions


    regexp.rb

    //.class    # Regexp  

    a RegExp

    to escape a special char 
    /\?/  

    special chars 
     ^, $, ? , ., //, \,  [, ], {, }, (, ), +, and *./


     THE DOT

     /.ejected/  
     MATCHEES
     "dejected" "rejected","%ejected" "8ejected". ...

     Character classes 
     /[dr]ejected/  
     "dejected" "rejected"

       range of chars 
       /[a-z]/  

       hexadecimal digit 
       /[A-Fa-f0-9]/  

       negative serach (ex non hexdec digit)
       /[^A-Fa-f0-9]/  

       digits 

       /\d/  

       alphanumeric character or underscore

       /\w/
       
       whitespace 

       /\s/

        to negate capitalize

        sucessful match returns a MatchData Object

    some MatchData methods
    m.string  
    m[0] 
    m.captures

    more info 
    https://www.regular-expressions.info/ruby.html



    Classes

    rubyclass.rb

    they are class objects,
    when you make one
    an object is created just to say 'heres a new class'
    that object has initialize and a new method
    when new is called, mem is allocated for the instance 
    new and initialize are seperate
    initialize is not a constrcutor

    to see if a object has a method 

    if d.respond_to? "talk" 
        d.talk  

    to get a reference or point to same object 

    d = Dog.new 'Labrador', 'Benzy'

    to find an objects class
    d.class.to_s  

    to get a bool abt an obj class
    puts num.instance_of? Fixnum 

    to define procs in classes

    class Dog      
        def bite; lambda {puts 'a'}; end
      end      


    Literal constrcutor
    so all the types you learned about, those are literal constrcutors

    String - %{hello} 
    Symbol - :symbol or :"hello world"
    Array - %w{x, y, z}
    Hash - {:India => "IN"}
    Range - 3..7 or 3...7   
    Command - `dir` or system   %{dir} 

    Method Missing 

    class Dummy  
        def method_missing(m, *args, &block)  
            puts "There's no method called #{m} here -- please try again."  
        end  
    end  
    Dummy.new.anything    
    wont end the program 


    Ruby Procs 
    they are like methods, you must call w/ right ## of args 
    so they turn code blocks to these repeateable actions 
    you make a proc class with lambda

    prc = lambda {puts 'Hello'}  

    you cannot passs methods into methods but you can pass procs into methods 
    dont use the do end version of procs lots of wonkiness i dont get

        http://rubylearning.com/blog/2007/11/30/akitaonrails-on-anatomy-of-ruby-blocks/closures/
        
    Ruby Closurs and Procs 
    [1,2,3,4].each { |i| puts i }

    [1,2,3,4].each do |i|
      puts i
    end
    
    
    to make a method act like an object 
    class Test
        def initialize
            @hello = "Hello!"
        end
        def say
            @hello
        end
    end
      
      m = Test.new.method(:say)
      puts m.call # => "Hello!"
      puts m.class # => "Method"    


      Including Other Files

    file motorcycle, startEngine

      load 'filename.rb'  
      require 'filename'  
      require_relative 'p030motorcycle'  -same file name ,this is for non ruby files 


    Open Classes 
    
    in Ruby classes are never closed 
    only add methods everything else must be done in intialize
    in startEngine.rb add a method and see the magic 

    if you dont want to overwrite a method 
    
    method: write_size
    String.methods.grep /^wr/ # []  

    class String  
        def write_size  
          self.size  
        end  
      end  
      size_writer = "Tell me my size!"  
      puts size_writer.write_size 

    be careful when adding instance vars and methods 
    i think you only use methods to access instance vars
    cant use procs like tht
    only give instance vars like procs in the initalize 


    Ruby Inheritance

    inheritance.rb

      we can override a class method in its child class, but the parent class method is kept 
      theres the root Class BasicObject, but its just for tiny size really you get everyhting from Object 

    when using super()
        Ruby sends a message to the parent of the object, asking it to invoke a method of the same name as the method invoking super
        however refer to inheritance if you want to do special things the instance var
        super(a, b, c) - it sends exactly those arguments.
        


    Redefining Methods 
        if you define a method in the class 2x, the last prevails 
    

    Abstract class
    a class left for subclasses to define

    class AbstractKlass  
        def welcome  
          puts "#{hello} #{name}"  
        end  
      end  
        
      # A concrete class  
      class ConcreteKlass < AbstractKlass  
        def hello; "Hello"; end  
        def name; "Ruby students"; end  
      end      
        

      Ruby Overloading Methods
      its a fake over load, so it can accept a different amnt of args but the implementation is manifested in fn definition

      file overload.rb


      Ruby Access Control 

      accessControl.rb

      these are for classes
      public methods, called by everyone
      protected  methods can be invoked only by objects of the defining class and its subclasses.
      private methods can only be called with self, no other receiver 

      this is determined dynamically, so on invocation, if in a method and its not called yr good 

      In Ruby, public, private and protected apply only to methods. Instance and class variables are encapsulated and effectively private, 
      and constants are effectively public. 
      There is no way to make an instance variable accessible from outside a class (except by defining an accessor method). 
      And there is no way to define a constant that is inaccessible to outside use.      

      to access vars in a class
      class Song  
        def initialize(name, artist)  
          @name     = name  
          @artist   = artist  
        end  
        For create reader only  
        attr_reader :name, :artist 
        For creating reader and writer methods  
        attr_accessor :name  
        For creating writer methods  
        attr_writer :name  
        
      end  
        
      song = Song.new("Brazil", "Ivete Sangalo")  
      puts song.name  
      puts song.artist 

      Exceptions 

      exception.jpg

      if its not a Standard Error ruby tries not to handle them 
  
      to raise an exception
      raise 'An error has occured' 

      Handling an Exception 

      def raise_and_rescue  
        begin  
          puts 'I am before the raise.'  
          raise 'An error has occured.'  
          puts 'I am after the raise.'  
        rescue  
          puts 'I am rescued.'  
        end  
        puts 'I am after the begin block.'  
      end  
     
      begin  
        # -  
      rescue OneTypeOfException  
        # -  
      rescue AnotherTypeOfException  
        # -  
      else  
        # No exceptions  
      end  


      to inspect an error
      begin  
        raise 'A test exception.'  
      rescue StandardError => e  
        puts e.message  
        puts e.backtrace.inspect  
      end  e.message  
        puts e.backtrace.inspect  
      end  

      some common errors RuntimeError (this is the default exception raised by the raise method),
       StandardError, NoMethodError, NameError, IOError, TypeError and ArgumentError
      
      Exception Object has 2 methods, message and backtrace 


      Guranantee process of code even if rescue is not used 
      ensure block. place after last rescue 
        
        
      to prevent errors using checking in a class  or execute code when a class var changes 
      class Name  
        attr_reader :first, :last    
        def first=(first)  
          if first == nil or first.size == 0  
            raise ArgumentError.new('Everyone must have a first name.')  
          end  
          first = first.dup  
          first[0] = first[0].chr.capitalize  
          @first = first  
        end  
      end

      Logging 

      require 'logger'  
      $LOG = Logger.new('log_file.log', 'monthly')  
      def divide(numerator, denominator)  
        $LOG.debug("Numerator: #{numerator}, denominator #{denominator}")  
        begin  
          result = numerator / denominator  
        rescue Exception => e  
          $LOG.error "Error in division!: #{e}"  
          result = nil  
        end  
        return result  
      end  
      divide(10, 2) 
      
      to change the log level 

      Time Class 

      t = Time.now  
      # to get day, month and year with century  
      # also hour, minute and second  
      puts t.strftime("%d/%m/%Y %H:%M:%S")  
        
      # You can use the upper case A and B to get the full  
      # name of the weekday and month, respectively  
      puts t.strftime("%A")  
      puts t.strftime("%B")  
        
      # You can use the lower case a and b to get the abbreviated  
      # name of the weekday and month, respectively  
      puts t.strftime("%a")  
      puts t.strftime("%b")  
        
      # 24 hour clock and Time zone name  
      puts t.strftime "at %H:%M %Z"  

      ruby p042time.rb  
      10/09/2006 10:06:31  
      Sunday  
      September  
      Sun  
      Sep  
      at 10:06 India Standard Time  
      Exit code: 0  
      
      Duck Typing

      you can do this     
    
      puts make_it_quack(Duck.new) 
    
      def make_it_quack(duck)  
      duck.quack  
      end
      
      Mutable and Immutable Objects

      to freeze an object 
      str.freeze 

      to ask if an object is frozen 
      str.frozen?

      Object Serialization
      Marshal only serializes pieces of data.

      serial.rb

      Modules/Mixins 

      mixnins.rb 
      act as a namespace see the namespace vars 
      shar functionality betwenn classes 

      to add folders to your paths
      $: << "c:/"         # add a folder to the load path
      
      if the module has a class or another module cant use include 

      module Trig  
        PI = 3.1416  
        # class methods  
        def Trig.sin(x)  
          # ...  
        end  
        def Trig.cos(x)  
          # ...  
        end  
      end  
        
      # p059mymoral.rb  
      module Moral  
        VERY_BAD = 0  
        BAD = 1  
        def Moral.sin(badness)  
          # ...  
        end  
      end  
        
      # p060usemodule.rb  
      require_relative 'p058mytrig'  
      require_relative 'p059mymoral'  
      Trig.sin(Trig::PI/4)  
      Moral.sin(Moral::VERY_BAD)        
      
  

      Self 
      theres only 1

      class and module

        class S  
            puts 'Just started class S'  
            puts self  
            module M  
              puts 'Nested module S::M'  
              puts self  
            end  
            puts 'Back in the outer level of S'  
            puts self  
          end          

      instance method 

      class S  
        def m  
          puts 'Class S method m:'  
          puts self  
        end  
      end  
      s = S.new  
      s.m   <S:0x2835908>       


      Self in singleton-method and class-method definitions

      Singleton methods - those attached to a particular object can be called by only one object.
       When a singleton method is executed, self is the object that owns the method, as shown below:
      
          # p063xself3.rb  
          obj = Object.new  
          def obj.show  
            print 'I am an object: '  
            puts "here's self inside a singleton method of mine:"  
            puts self  
          end  
          obj.show  
          print 'And inspecting obj from outside, ' 
          puts "to be sure it's the same object:"  
          puts obj  
      
      The output of the above example is:
      
          >ruby p063xself3.rb  
          I am an object: here's self inside a singleton method of mine: 
          #<Object:0x2835688> 
          And inspecting obj from outside, to be sure it's the same object:  
          #<Object:0x2835688>  
          >Exit code: 0  
      
      Class methods are defined as singleton methods for class objects. Refer to the following program:
      
          # p063xself4.rb  
          class S  
            def S.x  
              puts "Class method of class S"  
              puts self  
            end  
          end        
         

      CONSTANTS 
      ruby donest enforce this it gives a warning
      you can access them like module class 

      Socket Programming and Threads

      socketapi.jpg
      to use require 'socket'

      a sample date and time client
    # p068dtserver.rb  
    # Date Time Server - server side using thread  
    # usage: ruby p068dtserver.rb  
    require "socket"  
    dts = TCPServer.new('localhost', 20000)  
    loop do  
      Thread.start(dts.accept) do |s|  
        print(s, " is accepted\n")  
        s.write(Time.now)  
        print(s, " is gone\n")  
        s.close  
      end  
    end        


    # p069dtclient.rb  
    require 'socket'  
    streamSock = TCPSocket.new( "127.0.0.1", 20000 )  
    #streamSock.send( "Hello\n" )  
    str = streamSock.recv( 100 )  
    print str  
    streamSock.close      


  installing gems 
  https://guides.rubygems.org/rubygems-basics/#installing-gems  



  capybara
  plan to use capybara
  capybara-screenshot
  capybara-selenium
  percy-capybara
  capybara-angular
    





