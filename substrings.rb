def substrings(word, dictionary)
  res = []
  dictionary.each { |x| res << x if word.include? x }
  res
end

d=["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings('below', d)

