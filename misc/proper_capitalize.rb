


def repeat value
  yield value
end

code = Proc.new do |x|
  arr = x.split ""
  arr.each_with_index do |x,i|
    unless arr[i-1] == " " || i == 0
      arr[i].downcase!
    else
      arr[i].upcase!
    end
  end
  p arr.join ""
end




until false
  p %{Value please\n}
  repeat gets.chomp, &code
end