#!/usr/bin/ruby

def knapsackLight(value1, weight1, value2, weight2, maxW)
  capacity_left = maxW
  result = 0
  h = Hash[weight1, value1, weight2, value2]
  h.keys.each do |x|
    if capacity_left -x >= 0
      result += h[x]
    end
  end
  result
end

p knapsackLight(10, 5, 6, 4, 9)

