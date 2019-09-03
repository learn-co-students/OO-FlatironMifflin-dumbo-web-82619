class Employee

    attr_reader :name, :salary, :department 
    @@all = []

    def initialize(name, salary, department)
        @name = name 
        @salary = salary 
        @department = department 
        @@all << self 
    end 

    def manager_name 
        my_manager = Manager.all.select {|manager| manager.department == self.department}
        my_manager[0].name 
    end 

    def self.all 
        @@all
    end 

    def self.paid_over(amount)
        Employee.all.select {|employee| employee.salary  > amount }
    end 

    def self.find_by_department(dept)
        Employee.all.select {|employee| employee.department == dept }
    end 

    def tax_bracket 
        Employee.all.select {|employee| (employee.salary > self.salary - 1000) && (employee.salary < self.salary + 1000) }
    end 


end
