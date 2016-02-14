require './employee.rb'

class Department < Employee
  attr_reader :name, :staff

  def initialize(name = nil)
    @name = name
    @staff = []
  end

  def add_employee(worker)
    @staff << worker
  end

  def total_salaries(department)
    sum = 0
    @staff.each {|a| sum += a.salary}
    return sum
  end

  def raise_for_department(amount_to_disperse)
    gets_raise = @staff.select { |worker| yield (worker)}
    gets_raise.each {|worker| worker.salary += amount_to_disperse / gets_raise.length}
  end

end
