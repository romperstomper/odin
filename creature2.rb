class Creature
  #This method applies a hit taken during afight
  def hit( damage )
    p_up = rand(charisma)
    if p_up % 9 == 7
      @life += p_up/4
      puts "[#{self.class} magick power up #{p_up}!]" 
    end
    @life -= damage
    puts "[#{self.class} has died.]" if @life<=0
  end

  #This method takes one turn in a fight
  def fight(enemy, weapon)
    if life <= 0
      puts "[#{self.class} is too dead!]"
      return
    end

    #Attack the opponent
    your_hit = rand(strength+weapon)
    puts "[you hit with #{your_hit} points of damage!]"
    enemy.hit(your_hit)

    #Retaliation
    p enemy
    if enemy.life >0
      enemy_hit = rand(enemy.strength + enemy.weapon)
      puts "[your enemy hit with #{enemy_hit} points of damage!]"
      self.hit(enemy_hit)
    end
  end

end

class DwemthysArray < Array
  alias _inspect inspect
  def inspect; "#<#{self.class}#{_inspect}>"; end
  def method_missing(meth, *args)
    answer = first.sent(meth, *args)
    if first.life <=0
      shift
      if empty?
        puts "[whoa. you decimated Dwemuthy's array]"
      else
        puts "[Get read #{first.class} has emerged.]"
      end
    end
    answer || 0
  end
end





