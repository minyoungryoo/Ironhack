class MultiPaymentEmployee < Employee
    def initialize(name, email, base_salary, hourly_rate, hours_worked)
        @name = name
        @email = email
        @base_salary = base_salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      @base_salary + @hours_worked * @hourly_rate
    end
end