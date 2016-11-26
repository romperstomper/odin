def tennisSet(score1, score2)
    s = [score1, score2]
    if s.max == 6 and s.min <= 4
        return true
    elsif s.max ==7 and (s.max - s.min) == 1
        return true
            elsif s.max ==7 and (s.max - s.min) == 2
        return true
    else
        return false
    end
end
