require 'rspec'
require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.describe Park do

    it "can initialize" do
        yosemite = Park.new("Yosemite", 10)
        expect(yosemite).to be_a Park
    end

    it "has readable attributes" do
        yosemite = Park.new("Yosemite", 10)
        expect(yosemite.name).to eq("Yosemite")
        expect(yosemite.admission_price).to eq(10)
        expect(yosemite.vehicles).to eq([])
    end

    it "can read vehicles inside the park" do
        yosemite = Park.new("Yosemite", 10)
        vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
        charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
        jude = Passenger.new({"name" => "Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        vehicle_1.add_passenger(charlie)
        vehicle_1.add_passenger(jude)
        vehicle_1.add_passenger(taylor)

        expect(yosemite.vehicles).to eq([])
        
        yosemite.add_vehicle(vehicle_1)
        expect(yosemite.vehicles).to eq([vehicle_1])
    end
        
    it "can read passengers inside the park" do
        yosemite = Park.new("Yosemite", 10)
        vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
        charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
        jude = Passenger.new({"name" => "Jude", "age" => 20})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        vehicle_1.add_passenger(charlie)
        vehicle_1.add_passenger(jude)
        vehicle_1.add_passenger(taylor)

        
        yosemite.add_vehicle(vehicle_1)

        expect(yosemite.passengers).to eq([charlie, jude, taylor])
    end
        


end