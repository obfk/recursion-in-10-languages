# Calculate the sum of a list of numbers.

# recursion
def sum(array)
  return array[0] if array.size == 1
  return array[0] + sum(array[1..-1])
end

puts sum([1,2,3,4,5])

# tail recursion
def tail_sum(array, acc=0)
  if (array.size == 0)
    return acc
  else
    return tail_sum(array[1..-1], array[0] + acc)
  end
end

puts tail_sum([1,2,3,4,5])