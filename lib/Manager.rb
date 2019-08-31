class Manager
    attr_reader :name, :department, :age
    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age

        @@all << self
    end

    def hire_employees(empl_name, empl_salary)
        #employee instance
        Employee.new(empl_name, empl_salary, self)
    end

    def employees
        #return employees manager has
        Employee.all.select do |employee|
            employee.manager == self
        end
    end

    def self.all_departments
        #return departments oversees
        self.all.map do |managaer|
            manager.department
        end
    end
    

    def self.average_age
        #return average age
        total = self.all.sum do |manager|
            manager.age
        end
        total / (self.all.size)
    end

    def self.all 
        @@all
    end
end
