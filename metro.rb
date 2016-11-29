def metroCard(lastNumberOfDays)
    a=[31,28,31,30,31,30,31,31,30,31,30,31]
    l = lastNumberOfDays
    b = a.map.with_index{|x,i| a[i+1%12] if x==l}.compact
    Hash[*b.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }].map{|a,b| a}
end
