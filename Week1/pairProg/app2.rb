require_relative("lib/employee.rb")
require_relative("lib/MultiPaymentEmployee.rb")
require_relative("lib/SalariedEmployee.rb")
require_relative("lib/HourlyEmployee.rb")
require_relative("lib/payroll.rb")


josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
rachel = HourlyEmployee.new('Rachel','rachel@gmail.com',15,40)
min = HourlyEmployee.new('Min','minyoung.ryoo@gmail.com',15,40)

employees = [josh, nizar, ted, rachel, min]
payroll = Payroll.new(employees)
payroll.pay_employees
# payroll.notify_employee()
# josh => 1750
# nizar => 19230
# etc
# etc


# def print_everything(employees)
# 	employees.each do |employees|
# 	puts "#{employees.name}s salary is #{employees.calculate_salary}"
# 	end
# end
