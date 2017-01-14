def swapAdjacentBits(n)
    return n.to_s(2).rjust(32, '0').split('').each_slice(2).map { |x| [x[1],x[0]] }.join.to_i(2)
end
