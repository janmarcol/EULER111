def check_pit(a,b,c)
  return a**2+b**2 == c**2
end

def check_sum(a,b,c)
  return a+b+c == 1000
end

  for i in 1..1000 do 
    for j in (i+1)..1000 do
      for k in (j+1)..1000 do 
        if check_pit(i,j,k) then
 	  if check_sum(i,j,k) then
	    puts i*j*k
          end
        end        
      end
    end
  end
    
gets




