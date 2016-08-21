require 'pry'
class Caesar
def shift(string, shift)
  res=[]
  alphabet = ('a'..'z').to_a
  nums = (1..26).to_a
  hash = Hash[alphabet.zip(nums)]
  rhash = Hash[nums.zip(alphabet)]
  string.each_char do |x|
    if x == ' ' 
      res.push ' '
    else
      score = ((hash[x] + shift) % 26)
      res.push rhash[score]
    end
  end
  puts res.join('')
end
end


c=Caesar.new
c.shift('what a string', 5)
