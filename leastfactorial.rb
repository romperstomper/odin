def leastFactorial(n)
  x = 1
  count = 1
  while n > count
     count = (1..x).to_a.inject(:*)
      x+=1
  end
  count
end
