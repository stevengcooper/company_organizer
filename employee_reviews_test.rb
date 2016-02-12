require 'minitest/autorun'
require 'minitest/pride'

#Note: This line is going to fail first.
require './employee_reviews.rb'

$mock_inputs = []
def get_user_input
  $mock_inputs.shift
end

class EmployeeReviews < Minitest::Test
  def test_department_class_exists
    assert Department.new
  end

  def test_department_has_a_name
    assert Department.new("Accounting")
  end

  def test_employee_class_exits
    assert Employee.new("Bill Smith", "bill@yahoo.com", "919.343.4567", 60000)
  end

  def test_add_employee_to_department
    accounting = Department.new("Accounting")
    new_worker = Employee.new("Bill Smith", "bill@yahoo.com", "919.343.4567", 60000)
    assert accounting.add_employee(new_worker)
    assert_equal new_worker, accounting.staff[0]
  end

  def test_get_employee_name
    a = Employee.new("Bill Smith", "bill@yahoo.com", "919.343.4567", 60000)
    assert_equal "Bill Smith", a.name
    assert_equal  60000, a.salary
  end

  def test_get_a_department_name
    accounting = Department.new("Accounting")
    assert_equal "Accounting", accounting.name
  end

  def test_get_total_salaries_for_employees_in_department
    a = Employee.new("Bill Smith", "bill@yahoo.com", "919.343.4567", 60000)
    b = Employee.new("Yvonne Yo", "yvonne@gmail.com", "919.834.8765", 49000)
    accounting = Department.new("Accounting")
    assert accounting.add_employee(a)
    assert accounting.add_employee(b)
    assert accounting.total_salaries("Accounting")
  end






end
