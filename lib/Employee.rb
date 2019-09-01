class Employee
  attr_reader :name 
  attr_accessor :salary, :manager_name, :department
  @@all = []

  def initialize(name, salary)
    @name = name
    @salary = salary
    @manager_name = manager_name
    @department = department
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(salary)
    Employee.all.select do |employee|
      employee.salary > salary
    end
  end

  def self.find_by_department(department)
    Employee.all.find do |employee|
      employee.department == department
    end
  end

  def tax_bracket
    Employee.all.select do |employee|
      employee.salary > self.salary - 1000 && employee.salary < self.salary + 1000 && employee.name != self.name
    end
  end
       
end
