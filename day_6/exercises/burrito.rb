# Add the following methods to this burrito class and call the methods below
#the class:
# 1. add_topping
# 2. remove_topping
# 3. change_protein

class Burrito
  attr_reader :protein, :base, :toppings
  def initialize(protein, base, toppings)
    @protein  = protein
    @base     = base
    @toppings = toppings
  end

  def add_topping(topping)
    @toppings << topping
  end

  def remove_topping(topping)
    if @toppings.include?(topping)
      index = @toppings.index(topping)
      @toppings.delete_at(index)

    else
      puts "I cannot find that topping."
    end

  end

  def change_protein(protein)
    if @protein == protein
      puts "That's what you already have."

    else
      @protein = protein

    end

  end
end

dinner = Burrito.new("Beans", "Rice", ["cheese", "salsa", "guacamole"])
p dinner.protein
p dinner.base
p dinner.toppings

dinner.add_topping("lettuce")
p dinner.toppings

dinner.remove_topping("salsa")
p dinner.toppings

dinner.change_protein("Chicken")
p dinner.protein
