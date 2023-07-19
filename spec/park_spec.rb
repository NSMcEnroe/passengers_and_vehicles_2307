require 'rspec'
require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do

    it "can initialize" do
        yosemite = Park.new("Yosemite", 10)
        expect(yosemite).to be_a Park
    end

    
end