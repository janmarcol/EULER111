def sum_square(n)
  sum = 0
  for i in 1..n  
    sum += (i**2)
  end
  return sum
end

def square_sum(n)
  square = ((1+n)*n/2)**2
  return square
end

NUM = 1000

puts sum_square(NUM)
puts square_sum(NUM)

puts square_sum(NUM) - sum_square(NUM)

gets
