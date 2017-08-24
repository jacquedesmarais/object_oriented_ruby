require "./employee.rb"
require "./manager.rb"
require "./intern.rb"


employee_1 = Actualize::Employee.new(
                        first_name: "Majora",
                        last_name: "Carter", 
                        salary: 80000, 
                        active: true
                        )

employee_2 = Actualize::Employee.new(
                        first_name: "Danilo", 
                        last_name: "Campos", 
                        salary: 70000, 
                        active: true
                        )

intern = Actualize::Intern.new(
                    first_name: "Jimmy",
                    last_name: "Olsen",
                    salary: 30000,
                    active: true
                    )

manager = Actualize::Manager.new(
                      first_name: "Saron", 
                      last_name: "Yitbarek", 
                      salary: 100000, 
                      active: true, 
                      employees: [employee_1, employee_2]
                      )

intern.print_info
intern.send_report
puts "--------------"
employee_1.print_info
employee_2.print_info
puts "--------------"
manager.print_info
manager.send_report
manager.give_all_raises
manager.print_info
puts "---------------"
employee_1.print_info
employee_2.print_info
puts "---------------"
manager.fire_all_employees
p employee_1.active
p employee_2.active
puts "---------------"
