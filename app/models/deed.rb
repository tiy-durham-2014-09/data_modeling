class Deed < ActiveRecord::Base
  belongs_to :player
  belongs_to :property

  validates :houses,
            absence: { unless: :buildable?, message: "not buildable" }


  def buildable?
    group = property.color_group
    count = 0
    player.properties(force_reload=true).each do |property|
      if property.color_group == group
        count += 1
      end
    end

    if group == "blue" || group == "dark_purple"
      if count == 2
        true
      else
        false
      end
    else
      if count == 3
        true
      else
        false
      end
    end
  end

end
