require 'docking_station'
describe DockingStation do
  it 'responds to release_bike' do
  docking_station = DockingStation.new
  expect(docking_station).to respond_to :release_bike
  #expect(subject).to respond_to :release_bike
  end
end
