#sum of amicable numbers under 10000

def sum_divisors(num)
  i = 2
  sum = 1
  while i <= num/2 do   
    if num % i == 0 then
      sum +=i
      #puts i
    end
    i+=1
  end 
  return sum
end


def add_amicables(number_1, number_2)
  if check_amicables(number_1, number_2) then
    return number_1 + number_2
  else
    return 0
  end
end

def put_to_hash(list_of_numbers_and_divisors, number)
  list_of_numbers_and_divisors[number] = sum_divisors(number)
end

def create_pair_hash(limit)
  for i in 1..limit 
    put_to_hash(list_of_numbers_and_divisors,i)
  end
end

def check_amicables(list_of_numbers_and_divisors,number_1, number_2)
  return list_of_numbers_and_divisors[number_1] = number_2 && list_of_numbers_and_divisors[number_2] = number_1
end

 

LIMIT = 300

list_of_numbers_and_divisors = Hash.new

create_pair_hash(LIMIT)
sum_amicables = 0

for i in 1..(LIMIT -1)
  for j in i+1..LIMIT
    sum_amicables += add_amicables(i,j)
    puts sum_amicables
  end
  puts "number #{i}   sum: #{sum_amicables}"
end

puts "the end #{sum_amicables}"

