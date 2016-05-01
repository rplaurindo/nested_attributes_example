class JuiceIngredient

  include ActiveModel::Model

  attr_accessor :juice_id
  attr_accessor :ingredient_id
  attr_accessor :amount

  def initialize hash={}
    @juice_id = hash[:juice_id]
    @ingredient_id = hash[:ingredient_id]
    @amount = hash[:amount]
  end

end
