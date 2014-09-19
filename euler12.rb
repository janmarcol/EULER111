#triangular number with 500 divisors

divisors = 0
trian = 1
i = 2
begin
  divisors = 1
  for j in 1..(trian/2) do
    if trian % j == 0  then
      puts j
      divisors +=1         
    end
  end
  puts "trian: #{trian}"
  puts "divisors: #{divisors}"
  trian += i
  i+=1
  
end while divisors < 501

gets
  

