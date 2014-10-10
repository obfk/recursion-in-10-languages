def dig(hash, flt = {})
  hash.each { |k, v| v.is_a?(Hash) ? dig(v, flt) : flt[k] = v }
  flt
end

a = {a: {b: "cat", c: "dog"}, d: "pig"}
b = {a: {b: "cat"}, d: "pig"}

# dig(a)
response = dig(a)
valid    = dig(b)

dig(a).each_pair do |k, v|
  puts k if v == valid[k]
end
