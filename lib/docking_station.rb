class DockingStation

  def release_bike
    #bike = Bike.new
  end

end

#now rspec can work because release_bike has been defined

#  2.6.0 :002 > require './lib/docking_station.rb'
#   => true
#  2.6.0 :003 > docking_station = DockingStation.new
#   => #<DockingStation:0x00007fcbc59914a0>
#  2.6.0 :004 > docking_station.release_bike
#   => nil
#  2.6.0 :005 > bike.working?
#  Traceback (most recent call last):
#          4: from /Users/student/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `<main>'
#          3: from /Users/student/.rvm/rubies/ruby-2.6.0/bin/irb:23:in `load'
#          2: from /Users/student/.rvm/rubies/ruby-2.6.0/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
#          1: from (irb):5
#  NameError (undefined local variable or method `bike' for main:Object)
#  2.6.0 :006 >
