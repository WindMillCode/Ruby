boolean_1 = (3 < 4 || false) && (false || true)
puts %{(3 < 4 || false) && (false || true)}
gets
puts boolean_1 


boolean_2 = !true && (!true || 100 != 5**2)
puts %{!true && (!true || 100 != 5**2)}
gets
puts boolean_2 


boolean_3 = true || !(true || false)
puts %{true || !(true || false)}
gets
puts boolean_3 

