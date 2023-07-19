class Passenger
    attr_reader :name, :age, :adult
    def initialize(passenger_details)
        @name = passenger_details["name"]
        @age = passenger_details["age"]
        @adult = if passenger_details["age"] >= 18
                    true
                else false
                end
        @driver = false
    end

    def adult?
        @adult
    end

    def driver?
        @driver
    end

    def drive
        if @age >= 16
            @driver = true
        else @driver = false
        end
    end

    

end