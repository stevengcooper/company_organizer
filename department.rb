require 'byebug'
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
end
