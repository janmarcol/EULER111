def sum(string)
  arr = slice_string(string,1)
  product = arr.inject(0) { |sum, element| sum + element.to_i }
  return product
end


def slice_string(string,i)
  array = string.chars.each_slice(i).map(&:join)
  return array  
end

def factorial(n)
  fact = 1
  for i in 1..n do 
    fact *= i
  end
  return fact
end


fact = factorial(100).to_s
puts sum(fact)
gets
