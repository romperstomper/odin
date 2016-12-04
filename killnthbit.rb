def killKthBit(n, k)
      return n.to_s(2).chars.map.with_index {|c, i| (i == n.to_s(2).length-k ? "0" : c) }.join.to_i(2) 
end
