class Property < ActiveRecord::Base
  has_one :deed
  has_one :player, through: :deeds

  validates :name, presence: true
  validates :color_group, inclusion: { in: ['dark_purple',
                                            'light_blue',
                                            'violet',
                                            'orange',
                                            'red',
                                            'yellow',
                                            'green',
                                            'blue'],
                                      message: "%{value} is not a valid color group"}

end
