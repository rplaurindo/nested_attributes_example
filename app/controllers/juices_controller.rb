class JuicesController < ApplicationController
  respond_to :html, :js

  def new_ingredient
    respond_with @juice_ingredient = JuiceIngredient.new, layout: false
  end

  def new
    respond_with @juice = Juice.new
  end

  def ingredients
    [{id: 1, name: "Orange Pulp"}, {id: 2, name: "Tangerine Pulp"}]
  end
  helper_method :ingredients

end
