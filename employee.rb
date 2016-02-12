class Employee
  attr_reader :name, :email, :phone_number, :salary, :department

  def initialize(name, email, phone_number, salary, department = nil)
    @name = name
    @email = email
    @phone_number = phone_number
    @salary = salary
    @department = department
  end
end
