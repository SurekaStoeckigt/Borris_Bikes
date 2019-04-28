require 'bike'

describe Bike do
attr_reader :works

it 'responds to release_bike' do
bike = Bike.new(1)
expect(bike).to respond_to(:working?)
#it { is_expected.to respond_to :working?}.
end

it 'responds false if broken' do
bike = Bike.new(1)
expect(bike.works).to eq 1
end

end
#error with rspec because Bike class has not been created yet
#create file bike.rb in lib for Bike class
