class JuicePresenter < SimpleDelegator

  attr_reader :context

  def initialize object, context = nil
    @context = context
    super(object)
  end

  def each_ingredients form, &block
    if block_given?
      self.ingredients.each do |juice_ingredient|
        @juice_ingredient = juice_ingredient
        yield context.render(partial: "edit_ingredient_fields", locals: {form: form, juice_ingredient: juice_ingredient})
      end
      self.ingredients
    end if context && self.ingredients.present?
  end

end
