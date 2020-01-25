    # p008mymethods.rb  
    # A method returns the value of the last line  
    # Methods that act as queries are often named with a trailing ?  
    # Methods that are "dangerous," or modify the receiver, might be named  
    # with a trailing ! (Bang methods)  
    # A simple method  
    def hello  
      'Hello'  
    end  
    #use the method  
    puts hello  
    puts (hello)
      
    # Method with an argument - 1  
    def hello1(name)  
      'Hello ' + name  
    end  
    puts(hello1('satish'))  
      
    # Method with an argument - 2  
    def hello2 name2  
      'Hello ' + name2  
    end  
    puts(hello2 'talim')  
    puts hello2 'talim'

    def mtd(arg1="Dibya", arg2="Shashank", arg3="Shashank")  
      "#{arg1}, #{arg2}, #{arg3}."  
    end  
    puts mtd  
    puts mtd("ruby")  


##interpolation
puts "100 * 5 = #{100 * 5}"  

# The do end is a Ruby block which we talk in length later  
def foo *my_string
    my_string.inspect  
  end  
  puts foo 'hello','world'
  puts foo 



  def call_block  
    puts 'Start of method'  
    # you can call the block using the yield keyword  
    yield  
    yield  
    puts 'End of method'  
    end  
    # Code blocks may appear only in the source adjacent to a method call  
    call_block {puts 'In the block'}    


    def call_block  
        yield('hello', 99)  
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


        Block 

        x = 10  
        5.times do |x|  
          puts "x inside the block: #{x}"  
        end  
          
        puts "x outside the block: #{x}"  
        
        they are different 


        x = 10  
        5.times do |y|  
          x = y  
          puts "x inside the block: #{x}"  
        end  
          
        puts "x outside the block: #{x}"         

        they are same because x is outside the way