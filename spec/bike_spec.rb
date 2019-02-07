require 'bike'

describe Bike do
#it 'responds to release_bike' do
#expect(Bike.new).to respond_to :working?
it { is_expected.to respond_to :working?}
#end
end
#error with rspec because Bike class has not been created yet
#create file bike.rb in lib for Bike class
