def arithmeticExpression(a, b, c)
  b = b.to_f
  if a + b == c
    return true
  elsif a - b == c
    return true
  elsif a / b == c
    return true
  elsif a * b == c
    return true
  else
    return false
  end
end
