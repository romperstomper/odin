def rightmostbit(n, m)
  (n.to_s(2).rjust(30, '0').reverse.split('').zip m.to_s(2).rjust(30, '0').reverse.split('')).map.with_index.to_a.map { |x| x[1] if x[0][0] != x[0][1] }.compact.min
end

