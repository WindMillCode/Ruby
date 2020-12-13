puts %{Value please}
ans = gets.chomp


arr = ans.split ""
arr.each_with_index do |x,i|
  unless arr[i-1] == " " || i == 0
    arr[i].downcase!
  else
    arr[i].upcase!
  end
end


print arr.join ""