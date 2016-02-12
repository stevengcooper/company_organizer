require 'minitest/autorun'
require 'minitest/pride'
require 'byebug'

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
    assert Department.new( "Accounting")
  end

  def test_employee_class_exits
    aa = Employee.new(name: "Bill Smith",email:   "bill@yahoo.com", phone: "919.343.4567", salary: 60000)
  end

  def test_add_employee_to_department
    accounting = Department.new( "Accounting")
    a = Employee.new(name: "Bill Smith",email:   "bill@yahoo.com", phone: "919.343.4567", salary: 60000)
    assert accounting.add_employee(a)
    assert_equal a, accounting.staff[0]
  end

  def test_get_employee_name
    a = Employee.new(name: "Bill Smith",email:   "bill@yahoo.com", phone: "919.343.4567", salary: 60000)
    assert_equal "Bill Smith", a.name
    assert_equal  60000, a.salary
  end

  def test_get_a_department_name
    accounting = Department.new( "Accounting")
    assert_equal "Accounting", accounting.name
  end

  def test_get_total_salaries_for_employees_in_department
    a = Employee.new(name: "Bill Smith",email:   "bill@yahoo.com", phone: "919.343.4567", salary: 60000)
    b = Employee.new(name: "Yvonne Yo",email: "yvonne@gmail.com", phone: "919.834.8765", salary: 60000)
    accounting = Department.new("Accounting")
    assert accounting.add_employee(a)
    assert accounting.add_employee(b)
    assert accounting.total_salaries("Accounting")
    assert_equal accounting.total_salaries("Accounting"), 120000
  end

  def test_add_employee_review_text_to_employee
    b = Employee.new(name: "Yvonne Yo",email: "yvonne@gmail.com", phone: "919.834.8765", salary: 60000,review: "Thus far, there have been two concerns over Yvonne's performance, and both have been discussed with her in internal meetings.  First, in some cases, Yvonne takes longer to complete tasks than would normally be expected.  This most commonly manifests during development on existing applications, but can sometimes occur during development on new projects, often during tasks shared with Andrew.  In order to accommodate for these preferences, Yvonne has been putting more time into fewer projects, which has gone well.")
    assert b.review
    assert_equal b.review, "Thus far, there have been two concerns over Yvonne's performance, and both have been discussed with her in internal meetings.  First, in some cases, Yvonne takes longer to complete tasks than would normally be expected.  This most commonly manifests during development on existing applications, but can sometimes occur during development on new projects, often during tasks shared with Andrew.  In order to accommodate for these preferences, Yvonne has been putting more time into fewer projects, which has gone well."
  end

  def test_employee_performance_is_satisfactory_or_not
    b = Employee.new(name: "Yvonne Yo", performance: "unsatisfactory")
    assert b.performance
    assert_equal "unsatisfactory", b.performance
  end

  def test_give_raise_to_employee
    b = Employee.new(name: "Yvonne Yo", salary: 100000, performance: "satisfactory")
    assert_equal "satisfactory", b.performance
    assert b.salary_adjustment(b.performance, b.salary)
    assert_equal  110000, b.salary
  end

  def test_raises_to_department_employees
    accounting = Department.new( "Accounting")
    b = Employee.new(name: "Yvonne Yo", salary: 100000, performance: "unsatisfactory")
    a = Employee.new(name: "Bill Smith",email:   "bill@yahoo.com", phone: "919.343.4567", salary: 60000, performance: "satisfactory")
    c = Employee.new(name: "Xavier", salary: 70000, performance: "satisfactory")
    accounting.add_employee(a)
    accounting.add_employee(b)
    accounting.add_employee(c)
    b.performance
    a.performance
    c.performance
    accounting.raise_for_department(10000) {|e| e.performance == "satisfactory"}
    assert_equal 100000, b.salary
    assert_equal 65000, a.salary
    assert_equal 75000, c.salary
  end


  # def test_determine_employee_performance
  #   b = Employee.new("Yvonne Yo", "yvonne@gmail.com", "919.834.8765", 49000)
  #   assert employee.determine_performance(access_review(b.name))
  #   assert_equal employee.determine_performance(access_review(b.name)), false
  # end









end
