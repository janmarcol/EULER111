#How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

#1 Jan 1900 = Monday

def days_in_month(year,month)
  case month
    when 2  
      if leapyear(year) then 
        return 29
      else
        return 28
      end
      
    when 4,6,9,11 then
      return 30
      
    else
      return 31
    end 
end    
   
 
def leapyear(year)
  return ( ( year % 4 == 0 ) &&  ( year % 100 != 0 ) )  ||  ( year % 400 == 0 )
end

def sunday(day)
  return day % 7 == 0
end


def first_of_month(day)
  return true
end



days_from_start = 366
number_of_first_sundays = 0

for y in 1901..2000 do
  for m in 1..12 do
    if sunday(days_from_start) then
      number_of_first_sundays +=1
    end
    days_from_start += days_in_month(y,m)
  end
end

if sunday(days_from_start) then
  number_of_first_sundays -=1
end
puts number_of_first_sundays
puts days_from_start

