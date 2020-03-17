

class Bear

  attr_reader :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def stomach_size
    return @stomach.length
  end

  def eat_fish(river)
    @stomach.push(river.fish_decrease)
  end

  def roar
    return "Rar.."
  end




end
