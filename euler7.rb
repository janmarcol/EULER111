require  'Prime'

count = 10001
i = 0
x = 2
while i <= 10001 do
  if x.prime? then i+=1
    puts x
  end
  x +=1
end

gets
