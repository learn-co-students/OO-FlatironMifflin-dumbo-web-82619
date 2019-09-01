class Manager
  attr_reader :name
  attr_accessor :department, :age, :employees
  @@all = []

  def initialize(name, age, department)
    @name = name
    @age = age
    @department = department
    @employees = []
    @@all << self
  end

  def self.all
    @@all
  end

  def hire_employee(name, salary)
    new_hire = Employee.all.find do |employee|
      employee.name == name && employee.salary == salary
    end
    new_hire.manager_name = self.name
    new_hire.department = self.department
    employees << new_hire
  end

  def self.all_departments
    Manager.all.map do |manager|
      manager.department
    end
  end

  def self.average_age
    ages = Manager.all.map do |manager|
      manager.age
    end
    (ages.reduce(:+).to_f / ages.size).round(2)
  end


end
