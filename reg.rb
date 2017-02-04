def parse(rules)
  matches = []
  pat = /(?<rolls>\d{1,2})?d(?<sides>\d{1,2})(?<sign>\+|\-)?(?<mod>\d{1,2})?/
  rules.scan(pat) { matches << $~ }
  result = 0
  matches.each do |match|
    c = Hash[ match.names.zip( match.captures ) ]
    p "c equals #{c}"
    c['rolls'] = 1 unless c['rolls'] 
    if c['sign'] == '-'
      result+=(c['rolls'].to_i * c['sides'].to_i) - c['mod'].to_i
      p "result is #{result}"
    else
      result+=(c['rolls'].to_i * c['sides'].to_i) + c['mod'].to_i
      p "result is #{result}"
    end
  end
  result
end

p parse("4d6-L1d20-10 did4n't expect that")
