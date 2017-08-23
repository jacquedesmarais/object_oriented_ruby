# employee_1 = ["Jimmy", "Stewart", 70000, true]
# employee_2 = ["Susan", "Messing", 80000, true]

# puts employee_1[0] + " " + employee_1[1] + " makes " + employee_1[2].to_s + " a year."
# puts "#{employee_1[0]} #{employee_1[1]} makes #{employee_1[2]} a year."

# employee_1 = {:first_name => "Jimmy", :last_name => "Stewart", :salary => 70000, :active => true}
# employee_2 = {first_name: "Susan", last_name: "Messing", salary: 80000, active: true}

# puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes #{employee_1[:salary]} a year."
# puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes #{employee_2[:salary]} a year."

#initialize : automatically called when you greate a new instance method
#@var : instance variable

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end
end

employee_1 = Employee.new(
                          first_name: "Jimmy", 
                          last_name: "Stewart", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Susan", 
                          last_name: "Messing", 
                          salary: 80000, 
                          active: true
                          )
employee_1.print_info
employee_2.print_info
employee_2.give_annual_raise
employee_2.print_info
p employee_2.first_name

class Manager < Employee # Makes it so that manager class inherits everything that is happening in the employee class

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # code to send the email
    puts "Email sent."
  end
end

manager_1 = Manager.new(
                        first_name: "Bob",
                        last_name: "Hoskins",
                        salary: 1000000,
                        active: true,
                        employees: [employee_1, employee_2]
                        )

manager_1.print_info
manager_1.send_report

p employee_1
puts "--------------"

p manager_1
puts "--------------"