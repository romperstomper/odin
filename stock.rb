class Stock
  def picker(prices)
    #[17,3,6,9,15,8,6,1,10]
    #[0, 1,2,3,4, 5,6,7,8 ]
    best = 0
    sums = []
    index = 1
    result = []
    prices[0..-2].each_with_index do |x, i|
      prices[index..-1].each_with_index do |y, j|
        diff = -x + y
        if diff > best
          best = diff
          result = [i, index+j]
        end
      end
      index += 1
    end
    return result
  end
end


