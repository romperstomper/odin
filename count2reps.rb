def countSumOfTwoRepresentations2(n, l, r)
  res = 0
  a = l
  while a <= r do
      b = n - a
      if (b >= l && b <= r && b >=a)
          res+=1
      end
      a +=1
  end
  res
end
