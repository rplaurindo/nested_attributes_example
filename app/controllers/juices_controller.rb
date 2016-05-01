class JuicesController < ApplicationController
  respond_to :html, :js

  def new_ingredient
    respond_with @juice_ingredient = JuiceIngredient.new, layout: false
  end

  def new
    respond_with @juice = JuicePresenter.new(Juice.new)
  end

  def edit
    respond_with @juice = JuicePresenter.new(Juice.new, view_context)
  end

  def ingredients
    [{id: 1, name: "Orange Pulp"}, {id: 2, name: "Tangerine Pulp"}, {id: 3, name: "Water"}, {id: 4, name: "Sugar"}]
  end
  helper_method :ingredients

end
