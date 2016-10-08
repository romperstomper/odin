#!/usr/bin/ruby

def phoneCall(min1, min2_10, min11, s)
  result = 0
  while s > 0
    if result == 0
      if s - min1 >= 0
        s -= min1
        result += 1
      else
        break
      end
    elsif result.between?(1, 10)
       if s - min2_10 >= 0
         s -= min2_10
         result += 1
      else
        break
       end
    else
      if s - min11 >= 0
        s -= min11
        result += 1
      else
        break
      end
    end
    result
  end
end
