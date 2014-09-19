def factorial(n)
  return 1 if n.zero?
  1.upto(n).inject(:*)
end


paths = factorial(40)/(factorial(20)*factorial(20)) 



puts paths
