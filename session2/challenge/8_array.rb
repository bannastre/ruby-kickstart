# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

# This code will return true if any element shows up 3 times:
=begin
def got_three?(arr)
  result = false
  hash = Hash.new(0)
  arr.each.with_index { |a, idx| hash[a] += 1 if arr[idx] == arr[idx+1 }
  result = true if hash.any? {|hash, key| key >= 3}
  return result
end
=end

def got_three?(arr)
  result = false
  arr.each.with_index do |a, idx|
    result = true if arr[idx] == arr[idx+1] && arr[idx] == arr[idx+2]
  end
  return result
end
