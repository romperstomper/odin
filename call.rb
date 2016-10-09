#!/usr/bin/ruby

def phoneCall(min1, min2_10, min11, s)
  result = 0
  while s > 0
    p "before result: #{result} s: #{s}"
    if result == 0
      if s - min1 >= 0
        s -= min1
        result += 1
      else
        break
      end
    elsif result.between?(1, 9)
       if s - min2_10 >= 0
         s -= min2_10
         result += 1
      else
        break
       end
    elsif result >=10
      if s - min11 >= 0
        s -= min11
        result += 1
      else
        break
      end
    else
      break
    end
    p "after result: #{result} s: #{s}"
  end
  result
end
p phoneCall(10, 1, 2, 22)
