#Sum of even Fibonacci numbers

sum = 0
iminus2 = 1
iminus1 = 2
i = 2

until i >= 4000000 do
 if (i % 2 == 0) then 
   sum+=i
 end
 i = iminus2 + iminus1
 iminus2 = iminus1
 iminus1 = i 
 puts sum
end

puts sum
gets
