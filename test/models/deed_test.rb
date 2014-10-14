require 'test_helper'

class DeedTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "can't build houses if no monopoly" do
    boardwalk = Property.create(name: "Boardwalk", color_group: "blue", base_rent: "4")
    vance = Player.create(name: "Vance")
    boardwalk_deed = Deed.create(property: boardwalk, player: vance)
    boardwalk_deed.houses = 1

    assert_not boardwalk_deed.valid?
  end

  test "can build houses" do
    boardwalk = Property.create(name: "Boardwalk", color_group: "blue", base_rent: "4")
    parkplace = Property.create(name: "Parkplace", color_group: "blue", base_rent: "4")

    vance = Player.create(name: "Vance")

    boardwalk_deed = Deed.create(property: boardwalk, player: vance)
    parkplace_deed = Deed.create(property: parkplace, player: vance)
    boardwalk_deed.houses = 1

    assert boardwalk_deed.valid?
  end

end
