require 'docking_station'
#attr_reader :bike

describe DockingStation do
attr_reader :bikes

it {is_expected.to respond_to :release_bike }

it 'raises error if bike is not available' do
 #arrange
 docking_station = DockingStation.new
 #act

 #assert
  expect {docking_station.release_bike}.to raise_error("BikeNotAvailable")
#code block
end

it 'raises error if docking station contains bike' do

docking_station = DockingStation.new

DockingStation::DEFAULT_CAPACITY.times {docking_station.dock(Bike.new)}
bike2 = Bike.new

expect {docking_station.dock(bike2)}.to raise_error("DockingStationIsFull")
end
## feature test
it 'gets a bike and checks if it is working' do
station = DockingStation.new
bike = Bike.new
station.dock(bike)

#station.release_bike
#expect(released_bike.working?).to eq(true)
expect(station.release_bike).to be_working
end

it 'responds to bikes' do
docking_station = DockingStation.new
  expect(docking_station).to respond_to(:bikes)
end

#it 'responds to dock' do
  # arrange
#docking_station = DockingStation.new
  # act
#released_bike = docking_station.release_bike
  # assert
#expect(released_bike).to respond_to :dock
#end

#it 'can add a bike to docking station'do
#arrange
#docking_station = DockingStation.new
#bike = Bike.new
#act
#docked_bike = docking_station.dock(bike)
#assert
#expect(docking_station.all_bikes).to include bike

#end
#unit test
it 'responds to dock' do
station = DockingStation.new
bike = Bike.new
station.dock(bike)
expect(station).to respond_to(:dock).with(1).argument
end

it 'docks something' do
  bike = Bike.new
  docking_station = DockingStation.new
  expect(docking_station.dock(bike)).to include bike
end

it 'returns docked bikes' do
  bike = Bike.new
  docking_station = DockingStation.new
  docking_station.dock(bike) #have to dock bike before we can see it
  expect(docking_station.bikes).to include bike
end

it 'checking that capacity value is' do

  docking_station = DockingStation.new(10)
  expect(docking_station.capacity).to eq 10
end

end
#it 'responds to availabe method' do
#bike = Bike.new
#docking_station = DockingStation.new
#docking_station.dock(bike)
#expect(docking_station.bike).to respond_to(:available)
#end

# bike = Bike.new
# docking_station = DockingStation.new
# bike.working? => true
# docking_station.dock(bike) =>error
