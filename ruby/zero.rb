def head(a)
  return a[0]
end

def tail(a)
  return a[1..-1]
end

def zero(array)
  if array.length == 0
    return 0
  elsif head(array) == 0
    return 1 + zero(tail(array))
  else
    return 0 + zero(tail(array))
  end
end

puts zero([2,2,5,0,20,0,55])
puts zero([0,0,0,0,0,1])
