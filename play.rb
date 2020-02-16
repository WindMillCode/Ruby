# puts 'string'

# a = 1 and b = 2 and c =5 
# puts a 
# puts b
# puts c

# puts 'string'

# a = 1/14 and b = 2/3 and c =5 
# puts a 
# puts b
# puts c

##################
# @variable = @variable || "default value" 

# d = 'stirng'
# puts d

# def f arg  
#     arg/2  
#   end  
    
# if a = f(4) and true then
#     b = false or '3657'
# end
#  a=2 and b =3 and c =4

# p a
# puts b
# p c

#######################

# # puts `dir`
# c = system('dir') and b =32 and a ='string' and d =  system('dir')  
# puts c
# puts b
# puts a
# puts d.to_s + '32'


# #######################


# a = <<END_STR  
# This is the string  
# And a second line  
# END_STR
   

# puts a


# a = 'hello '  
# a<<'world. 
# I love this world...'

# puts a

# #######################

# puts Float::DIG  
# puts Float::MAX  

# puts self
# b =3 
# a = b 
# p a

#######################

# # puts String.methods.sort 
# puts String.instance_methods.sort

# ##################3

# puts U+0048 U+0065 U+006C U+006C U+006F  

# coding: utf-16
# puts Encoding.list  

# ##################3

# unless ARGV.length == 2  
#     puts "Usage: program.rb 23 45"  
#     exit  
#   end  


  # ##################3

#   class Dog  
#     def initialize breed, name  
#       # Instance variables  
#       @breed = breed  
#       @name = name  
#       @bite = lambda { |y| puts 'Arrrggh'}
#     end  
    
#     def bark  
#       puts 'Ruff! Ruff!'  
#     end  
   
#     def display  
#       puts "I am of #{@breed} breed and my name is #{@name}"  
#     end  
#   end  

#   n = Dog.new 'johnny' ,'castro'

#   class Dog      

#     def runProc
        
#         puts @bite.call 'a'
#     end
#     def bite; lambda {puts 'a'}; end
#   end  
  
#   n.bite.call



  ######################################3
  /accesss attr vars/

#   class Song  
#     def initialize(name, artist)  
#       @name     = name  
#       @artist   = artist  
#     end  
#     attr_reader :name, :artist  # create reader only  
#     # For creating reader and writer methods  
#     # attr_accessor :name  
#     # For creating writer methods  
#     # attr_writer :name  
    
#   end  
    
#   song = Song.new("Brazil", "Ivete Sangalo")  
#   puts song.name  
#   puts song.artist 


#########################################

#########################################
# instances vars used by subclass 1 per class 
# class C  
#     def initialize  
#       @n = 100  
#     end  
    
#     def increase_n  
#       @n *= 20  
#     end  
#   end  
    
#   class D < C  
#     def show_n  
#       puts "n is #{@n}"  
#     end  
#   end  
    
#   d = D.new  
#   d.increase_n  
#   d.show_n 
  
#   e = D.new  
#   e.increase_n  
#   e.show_n  

  #########################################
#  to raise an exception

# raise 'An error has occured' 


#########################################
def return_something
    2
end


#########################################


#########################################
# Your code here

def full_name first,*middle,last
  v = first
  middle.each do |d|
    v.concat ' ' , d 
  end 
  v.concat ' ' , last 
  puts v
end 
full_name 'Pradeep', 'Suresh', 'Igbo', 'Satyanarayana'
#########################################

#########################################
# Your code here

# def convert_temp temp,**options

# #   puts options
#   start = ''
#   last = '' 
#   final = temp.to_f
# #   begin
# #     if options[:output_scale].class != String then
# #         options[:output_scale] = 'celsius'
# #     end
# #   rescue
# #     puts 'error'
# #   end

#   unless options[:input_scale] == options[:output_scale]
  

#   if options[:input_scale] == 'fahrenheit'    then
#     final = (final -32.0 )  * (5.0/9.0)
#     if options[:output_scale] ==  'kelvin'  then
#       final +=   273.15
#     end     
   

#   elsif options[:input_scale] == 'kelvin'   then
#     final -=   273.15
#     if options[:output_scale] ==  'fahrenheit'  then
#       final = (final * (9.0/5.0) ) +32
#     end     
     

#   elsif options[:input_scale] == 'celcius'   then
#     backup = final 
#     final +=   273.15
#     if options[:output_scale] ==  'fahrenheit'  then
#       final = (backup * (9.0/5.0) ) +32
#     end     
#   end     

#  end
#    final
# end 
# convert_temp 80, input_scale: 'kelvin', output_scale: 'fahrenheit'
#########################################
     
# def call_block  
#     puts 'Start of method'  
#     # you can call the block using the yield keyword  
#     yield  
#     yield  
#     puts 'End of method'  
#     end  
#     # Code blocks may appear only in the source adjacent to a method call  
#     x=300
# call_block do 
#   puts 'In the block'
# end   
    
#########################################

#ranges
# puts (1..10).to_a
# puts (1...10).to_a
# puts %w{a}.class
#########################################

# attach a standalone proc
my_proc = lambda { |i| puts i }
my_proc.call %w{1,2,3,4}
#########################################