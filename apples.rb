 def appleBoxes(k)
   red = Array(1..k).map {|x| x*x if x.even?}.compact
   yellow = Array(1..k).map {|x| x*x if x.odd?}.compact
   red.inject(0) {|sum,x| sum+x} - yellow.inject(0) {|sum,x| sum+x}
end
