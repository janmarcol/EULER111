number = 2**1000

def sum(string)
  arr = slice_string(string,1)
  product = arr.inject(0) { |sum, element| sum + element.to_i }
  return product
end


def slice_string(string,i)
  array = string.chars.each_slice(i).map(&:join)
  return array  
end

puts sum(number.to_s)
 

gets
