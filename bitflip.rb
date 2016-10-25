def bitflip(a, b ,c)
  x = 0
  [a, b, c].each do |n|
    x = x ^ n
  end
  x
end

p bitflip(7, 7, 2)
