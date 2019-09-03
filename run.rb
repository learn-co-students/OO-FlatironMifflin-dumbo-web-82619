require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("m1", "d1", 38)
m2 = Manager.new("m2", "d2", 40) 
m3 = Manager.new("m3", "d3", 42)

e1 = Employee.new("e1", 1500, "d1")
e2 = Employee.new("e2", 1200, "d1")
e3 = Employee.new("e3", 1800, "d2")
e4 = Employee.new("e4", 150000, "d2") 


binding.pry
puts "done"
