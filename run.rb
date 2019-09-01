require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

# managers

michael = Manager.new("Michael Scott", 42, "Scranton Branch")
dwight = Manager.new("Dwight K. Schrute", 38, "Sales")
jim = Manager.new("Jim Halpert", 32, "Accounting")

# employees

meredith = Employee.new("Meredith Palmer", 35000) #, "Michael Scott")
creed = Employee.new("Creed Bratton", 40000) #, "Michael Scott")
pam = Employee.new("Pam Beesley", 30000) #, "Michael Scott")

stanley = Employee.new("Stanley Hudson", 55000) #, "Dwight K. Schrute")
phylis = Employee.new("Phylis Lapin", 50000) #, "Dwight K. Schrute")
andy = Employee.new("Andy Bernard", 45000) #, "Dwight K. Schrute")

angela = Employee.new("Angela Martin", 40000) #, "Jim Halpert")
oscar = Employee.new("Oscar Martinez", 45000) #, "Jim Halpert")
kevin = Employee.new("Kevin Malone", 35000) #, "Jim Halpert")


binding.pry
puts "done"
