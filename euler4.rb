def palindrome(n)
  return n.to_s == n.to_s.reverse!
end

HIGH = 999
LOW = 100
pal = 1

HIGH.downto(LOW) do |i|
  HIGH.downto(LOW) do |j|
    
    if palindrome(i*j) && i*j > pal then puts pal = i*j
      puts pal
	break
    end
  end
end



gets


