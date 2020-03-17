

class River

  attr_reader :name

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end


  def fishes_count
    return @fishes.length
  end

  def fish_decrease
    return @fishes.pop()
  end





end
