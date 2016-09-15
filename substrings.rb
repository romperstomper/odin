def substrings(words, dictionary)
  res = Hash.new(0)
  words.split.each do |w|
    dictionary.each { |x| res[x] += 1 if w.include? x }
  end
  res
end

d=["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#p substrings('below', d)
p substrings("Howdy partner, sit down! How's it going?", d)

