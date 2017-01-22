def willYou(young, beautiful, loved)
    y = young
    b = beautiful
    l = loved
    if y and b and l
        return false
    elsif (y or b) and l
        return true
    elsif !(y or b) and l
        return true
    elsif (y and b) and !l
        return true
    else
    
        return false
    end

end
