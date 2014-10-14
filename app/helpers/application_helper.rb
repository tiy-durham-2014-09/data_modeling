module ApplicationHelper

  def pair(beer_title, cheese_title)
    beer = BeerStyle.where(title: beer_title).first
    cheese = CheeseStyle.where(title: cheese_title).first
    Pairing.create(beer_style_id: beer.id, cheese_style_id: cheese.id)
  end

end
