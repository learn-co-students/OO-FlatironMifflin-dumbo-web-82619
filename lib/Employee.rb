class Employee
    attr_reader :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name 
        @salary = salary
        @manager = manager
        @@all << self
    end

    def tax_bracket
        not_including_self = self.all.select do |employee|
            employee != self
        end

        not_including_self.select do |employee|
            (employee.salary - self.salary).abs < 1000
        end
    end

    def self.paid_over(num)
        #return empl with salaries over amount
        self.all.select do |employee|
            employee.salary >= num
        end
    end

    def self.find_by_department(depart_name)
        #return department employees
        self.all.select do |employee|
            employee.manager.department == depart_name
        end
    end

    def self.all
        @@all
    end
end
