require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
ben = Manager.new("Benny", "Tech", 28)
carl = Manager.new("Carl", "Finance", 26)
elsie = Manager.new("Elsie", "Legal", 27)

andy = Employee.new("Andrew", 81000, "Benny")
kevin = Employee.new("Kevin", 79000, "Benny")
annie = Employee.new("Annie", 85000, "Carl")
dennis = Employee.new("Dennis", 75000, "Carl")
patty = Employee.new("Patty", 84000, "Elsie")
myron = Employee.new("Myron", 80000, "Elsie")


binding.pry
puts "done"
