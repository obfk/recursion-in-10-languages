def reverse(string, acc="")
  return acc if string.length == 0
  return reverse(string[1..-1], string[0] + acc)
end

puts reverse("hammer")