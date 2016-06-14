class Payroll
    def initialize(employees)
        @employees = employees
        @employ_pay = []
         @total_pay = 0
         @employ_notif = []
    end

  def notify_employee(employee)
          #email them
          @employ_notif = @employees.map do |employee|
          puts "Notify #{employee.name} of the paycheck by emailing at #{employee.email}."
        end
        @employ_notif
  end

  def pay_employees
      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
      # @indiv_pay.push(@employees.calculate_salary)

     @employ_pay = @employees.map do |employees|
	puts "#{employees.name}s salary is $#{employees.calculate_salary*0.82}"
	end
    @employ_pay

      @employees.each do |employee|
      	@total_pay += employee.calculate_salary*0.82
      end
      puts "The total pay is: $#{@total_pay}"

      notify_employee(@employees)
  end
end




