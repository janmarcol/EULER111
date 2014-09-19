number = 0
collatz = 13
collatz_count = 0
highest_count = 0
NUMBER = 1_000_000

for i in 2..NUMBER do
  starting_collatz = i
  collatz = i
  collatz_count = 0
  while collatz != 1 
    if collatz % 2 == 0 then
      collatz /=2
    else
      collatz = 3*collatz + 1
    end
    collatz_count +=1
  end
  
  if collatz_count > highest_count then
    highest_collatz = starting_collatz
    highest_count = collatz_count
    puts "number #{highest_collatz} : count: #{highest_count}"
  end
end

puts highest_collatz


