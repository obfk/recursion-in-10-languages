def sum(array)
  return array[0] if array.size == 1
  return array[0] + sum(array[1..-1])
end

sum([1,2,3,4,5])
