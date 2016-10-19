#!/usr/bin/ruby

def knapsackLight(value1, weight1, value2, weight2, maxW)
  capacity_left = maxW
  result = 0
  h = Hash[value1, weight1, value2, weight2]
  h.keys.sort_by {|k,v| k}.reverse.each do |k|
    if capacity_left -h[k] >= 0
      result += k
      capacity_left -= h[k]
    end
  end
  result
end

p knapsackLight(10, 5, 6, 4, 8)
