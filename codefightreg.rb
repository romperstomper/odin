def bugsAndBugfixes(rules)
    matches = []
    pat = /(?<rolls>\d+)?d(?<sides>\d+)(?<sign>\+|\-)?(?<mod>\d+)?/
    rules.scan(pat) { matches << $~ }
    result = 0
    matches.each do |match|
        c = Hash[ match.names.zip( match.captures ) ]
        c['rolls'] = 1 unless c['rolls'] 
        if c['sign'] == '-'
            tmp=(c['rolls'].to_i * c['sides'].to_i) - c['mod'].to_i
        else
            tmp=(c['rolls'].to_i * c['sides'].to_i) + c['mod'].to_i
        end
        p "#{tmp} #{c}"
        result += tmp
    end
    result
end
