class Manager

    attr_reader :name, :department, :age
    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age 
        @@all << self 
    end 

    def employees 
        Employee.all.select {|employee| employee.department == self.department}
    end 

    def self.all 
        @@all 
    end  

    def hire_employee(name, salary)
        Employee.new(name, salary, self.department)
    end 

    def self.all_departments 
        Manager.all.map {|manager| manager.department}
    end 

    def self.average_age 
        ages = Manager.all.map {|manager| manager.age} 
        ages.inject{ |sum, el| sum + el }.to_f / ages.size
    end 
end

