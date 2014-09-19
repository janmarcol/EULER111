#sum of primes under 2mm
require 'Prime'

sum = 2
BELOW = 2000000

for i in 3..BELOW do 
  if i.prime? then sum +=i
  end
end
    

puts "#{sum}"




