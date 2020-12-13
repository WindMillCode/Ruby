class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!

class Dragon < Creature
  def fight
    puts "Instead of breathing fire..."
    return super
  end
end

arc = Dragon.new %{Jake}

p arc.fight
p arc.name