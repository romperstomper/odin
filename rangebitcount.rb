def rangeBitCount(a, b)
  r = ''
  (a..b).to_a.each do |x|
    r += x.to_s(2).gsub('0', '')
  end
  r.length
end
