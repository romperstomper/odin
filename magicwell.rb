def magicalWell(a, b, n)
    x =a
    y =b
    res = 0
    n.times do
        res += a * b
        a+=1 
        b+=1
    end
    res
end
