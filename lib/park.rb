class Park
    attr_reader :name, :admission_price, :vehicles, :passengers
    def initialize(name, admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles = []
        @passengers = []
    end

    def passenger_count(vehicle)
        @passengers += vehicle.passengers
    end



    def add_vehicle(vehicle)
        @vehicles << vehicle
        
        passenger_count(vehicle)
    end




end