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


end
