class Juice
  include ActiveModel::Model

  attr_accessor :name

  def ingredients
    [JuiceIngredient.new(juice_id: 1, ingredient_id: 2, amount: '200ml'), JuiceIngredient.new(juice_id: 1, ingredient_id: 3, amount: '100ml')]
  end

end
