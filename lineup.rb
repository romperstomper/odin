def lineUp(commands)
  r =0
  previous = false
  aligned = true
  commands.each_char do |command|
    if command == 'A'
      if aligned
        r +=1
      end
    else
      if aligned == false
        r += 1
        aligned = true
      else
        aligned = false
      end
    end
    puts "prev #{previous} comm #{command} align #{aligned} r #{r}"
    previous = command
  end
  r
end
