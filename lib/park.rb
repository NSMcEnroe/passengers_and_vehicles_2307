class Park
    attr_reader :name, :admission_price, :vehicles, :passengers, :revenue
    def initialize(name, admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles = []
        @passengers = []
        @revenue = 0
    end

    def passenger_count(vehicle)
        @passengers += vehicle.passengers

    end



    def add_vehicle(vehicle)
        @vehicles << vehicle
        
        passenger_count(vehicle)

        @revenue += 10
    end

    # def all_attendees
    #     only_passengers = @passengers.name
    #     require 'pry';binding.pry
    #     only_passengers.sort
    # end






end