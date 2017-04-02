def additionWithoutCarrying(param1, param2)
  r = []
  s = param1.to_s.split('').map {|i| Integer(i)}
  q = param2.to_s.split('').map {|i| Integer(i)}
  if s.length < q.length
    d = q.length - s.length
    s.each_with_index do |x,i|
      r << (x+q[-s.length+i])%10
    end
    return (q[0..d-1] + r).join.to_i
  elsif q.length < s.length
    d = s.length - q.length
    q.each_with_index do |x,i|
      r << (x+s[-q.length+i])%10
    end
    return (s[0..d-1] + r).join.to_i
  else
    q.each_with_index do |x,i|
      r << (x+s[-q.length+i])%10
    end
    return r.join.to_i
  end

end
