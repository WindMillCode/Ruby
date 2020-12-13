=begin
[1,2,3,4].each do |x|

end
=end


=begin
def yield_name name
  puts "In the method! Let's yield."
  yield "Kim"
  puts "In between the yields!"
  yield name
  puts "Block complete! Back in the method."
end

yield_name ("Eric")  { |n| puts "My name is #{n}."  }
=end


# with procs
=begin
def yield_name name
  puts "In the method! Let's yield."
  yield "Kim"
  puts "In between the yields!"
  yield name
  puts "Block complete! Back in the method."
end



a =  Proc.new do |n| puts "My name is #{n}." end
a.call "Joe" 
# yield_name "Eric" , &a
=end


# p "a".methods

=begin
strings = %w{ a  b  c}
uppercase = strings.collect  &:upcase
p uppercase
=end

=begin
def lambda_demo  a,b,c
  puts "I'm the method!"
  a.call  1
  b.call
  c.call
  puts "finished"
end

my_lambda =    lambda { |x| puts "I'm the lambda! #{x}" }
other_lambda = lambda { puts "I'm lambda 2!" }
my_Proc = Proc.new { puts "I'm lambda 2!" }


lambda_demo  my_lambda,other_lambda,my_Proc
=end

=begin
def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc
# Output "Batman will win!" 
=end

# =begin
def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  p victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda
# Output "Iron Man will win!"
# =end


