def caesar(string, shift)
  alphabet = ('a'..'z').to_a
  nums = (0..25).to_a
  hash = Hash[alphabet.zip(nums)]

