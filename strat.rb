class Strategies
  def initialize(items=[])
    @items = items
  end

  def to_s
    @items.to_s
  end
end

class MaxStrategy < Strategies
  def choose_item
    @items.max
  end
end

class MinStrategy < Strategies
  def choose_item
    @items.min
  end
end

class RandomStrategy < Strategies
  def choose_item
    @items.sample
  end
end

class StrategyFactory
  def self.create_strategy(items = [], type = :max)
    case type
    when :random then RandomStrategy.new(items)
    when :max then MaxStrategy.new(items)
    when :min then MinStrategy.new(items)
    else
      raise "error #{type} not valid"
    end
  end
end

class Game
  def initialize(items=[])
    @items = items
    @strategy = StrategyFactory.create_strategy(items, :max)
  end

  def choose_item
    @strategy.choose_item
  end

  def to_s
    @items.to_s
  end
end

game = Game.new([1,2,3,4,5])

puts "Items in my game: #{game}"
puts "game response #{game.choose_item}"
