require 'byebug'
require './reviews.rb'

class Employee
  attr_reader :name, :email, :phone, :salary, :department

  attr_accessor :review

  def initialize(name: nil, email: nil, phone: nil, salary: nil, department: nil, review: nil, employee_performance: nil)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @department = department
    @employee_performance = employee_performance
    @review = review
  end

  def access_review(name)
    # @reviews.select {|n| (n.match(/\b#{name}\b/i)) ? (n = name.review) : false}
  end

  def employee_performance
    @employee_performance = "unsatisfactory"
  end



  # def determine_performance(access_review(name))
  # end

end
