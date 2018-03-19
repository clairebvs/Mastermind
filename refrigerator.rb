class Refrigerator

  attr_accessor :color

  attr_reader :size
              :food

  def initialize(color, size)
    @color = color
    @size = size
    @food = []
  end

  def add_food(new_food)
    if(@food.length < @size)
      @food << new_food
    end
  end

end

r = refrigerator.new("pink", 3)
r.color ="green"
p r.color
r.add_food "apple"
r.add_food "coffee"
r.add_food "eggs"
r.add_food "bacon"
p r.food
