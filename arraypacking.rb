def arrayPacking(a)
  r = ''
  a.reverse.each do |x|
    r += x.to_s(2).rjust(8, '0')
  end
  p r
  r.to_i(2)
end
