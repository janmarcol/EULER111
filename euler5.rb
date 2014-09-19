def check(n,from,to)
  c = true
  from.downto(to) do |i|
    if (n % i) != 0 then c = false
    end
  end  
  return c
end

i=40
from = 20
to =11

while !check(i,from,to) do
  i+=20
  puts i
end

puts i
gets
