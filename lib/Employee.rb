class Employee
    attr_reader(:name, :salary, :manager_name)

    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(salary)
        found = self.all.select do |employee|
            employee.salary > salary
        end
        if found.size == 0
            "There is no one paid that high"
        else
            found
        end
    end

    def self.find_by_department(department)
        found = Manager.all.find do |manager|
            manager.department == department
        end
        select = self.all.find do |employee|
            employee.manager_name == found.name
        end
    end

    def tax_bracket
        tax_bracket = Employee.all.select do |employee|
            employee.salary >= (self.salary - 1000) && employee.salary <= (self.salary + 1000)
        end
        tax_bracket.delete(self)
        tax_bracket
    end

end
