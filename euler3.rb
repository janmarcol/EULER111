#NUMBER = 600851475143 
NUMBER= 24
number = NUMBER



i = 2
while number > 1 do
  while number % i == 0 do
    number /= i
	puts number
    puts i
  end
  i+=1
end

gets

