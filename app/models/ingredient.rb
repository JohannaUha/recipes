class Ingredient < ActiveRecord::Base
  belongs_to :recipe

  def printtaa
    "#{amount} #{unit} #{name}"
  end
end
