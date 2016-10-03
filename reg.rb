def parse(rules)
    matches = []
    pat = /(?<rolls>\d{1,2})?d(?<sides>\d{1,2})(?<sign>\+|\-)?(?<mod>\d{1,2}|L)?/
  rules.scan(pat) { matches << $~ }
  result = 0
  matches.each do |match|
    c = Hash[ match.names.zip( match.captures ) ]
    p "c equals #{c}"
    next unless c['rolls'] || c['sign']
    c['rolls'] = 1 unless c['rolls'] 
    if c['mod'] == 'L'
      c['mod'] = c['sides']
    end
    if c['sign'] == '-'
      result+=(c['rolls'].to_i * c['sides'].to_i) - c['mod'].to_i
    else
      result+=(c['rolls'].to_i * c['sides'].to_i) + c['mod'].to_i
    end
  end
  result
end

p parse("4d6-L1d20-10 did4n't expect that")
