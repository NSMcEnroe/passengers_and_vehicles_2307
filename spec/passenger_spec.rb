require 'rspec'
require './lib/passenger'

RSpec.describe Passenger do
   
    it "can initialize" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        expect(charlie).to be_a Passenger
        expect(taylor).to be_a Passenger
    end

    it "can return a name" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
        expect(charlie.name).to eq("Charlie")
    end

    it "can return an age" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
        expect(charlie.age).to eq(18)
    end

    it "can see if the passenger is an adult" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
        expect(charlie.adult?).to be true

        taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        expect(taylor.adult?).to be false
    end

    it "can set a passenger as a driver" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
        expect(charlie.driver?).to be false
        charlie.drive
        expect(charlie.driver?).to be true

        taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        taylor.drive
        expect(taylor.driver?).to be false

    end

end
