def max(x, y)
  x > y ? x : y
end

def recursive_max(array)
  if array.length == 1
    return array.first
  else
    return max(array.last, recursive_max(array[0..-2]))
  end
end

puts recursive_max([1,5,20,0,59,1])
