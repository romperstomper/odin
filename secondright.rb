def secondRightmostZeroBit(n)
    return 2**n.to_s(2).reverse.split('').each_with_index.map { |x,i| i if x=='0' }.compact[1]

end
