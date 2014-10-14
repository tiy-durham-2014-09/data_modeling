class CheeseStyle < ActiveRecord::Base
  has_many :pairings
  has_many :beer_styles, through: :pairings

  cheeses = ['marscapone', 'ricotta', 'chevre', 'brie', 'camembert', 'triple creme', 'fontina', 'havarti',
             'american cheddar', 'english cheddar', 'young gouda', 'aged gouda', 'swiss emmentaler',
             'gruyere', 'tomme', 'parmasan', 'roquefort', 'gorganzola', 'danish blue', 'stilton',
             'mozzarella', 'provolone', 'washed rind']

  cheeses.each do |cheese|
    CheeseStyle.create(title: cheese)
  end
end
