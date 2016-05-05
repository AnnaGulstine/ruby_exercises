# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class.

# The Tv class will have the attributes: power, volume, and channel.

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods:
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv
  attr_accessor :power, :volume, :channel

  def initialize(power, volume, channel)
    @power = power
    @volume = volume
    @channel = channel
  end
end

class Remote
  attr_accessor :tv

  def initialize(which_tv)
    @tv = which_tv
  end

  def toggle_power
    if @power == "on"
      @power = "off"
    else
      @power = "on"
    end
  end

  def increment_volume
    @volume = @volume + 1
  end

  def decrement_volume
    @volume = @volume - 1
  end

  def set_channel(channel)
    @channel = channel
  end
end

samsung = Tv.new("on", 10, 3)
toshiba = Remote.new(samsung)

toshiba.toggle_power
puts samsung.power