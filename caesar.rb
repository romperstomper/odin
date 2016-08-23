class Caesar
def shift(string, shift)
  res=[]
  alphabet = ('a'..'z').to_a
  nums = (1..26).to_a
  hash = Hash[alphabet.zip(nums)]
  rhash = Hash[nums.zip(alphabet)]
  string.each_char do |x|
    if x == x.upcase
      up = true
    end
    if x == ' ' 
      res.push ' '
    else
      score = ((hash[x.downcase] + shift) % 26)
      up ?(res.push rhash[score].upcase) : (res.push rhash[score])
    end
  end
  return res.join('')
end
end

