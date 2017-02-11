class Array
  def foldl(method)
    inject { |result, i| result ? result.send(method, i) : i } 
  end

end

#puts [1000.0, 200.0, 50.0].foldl("/")

class String
  def split
    res = []
    chars.each do |x|
      p x
    end
  end
end







