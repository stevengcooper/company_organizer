require 'byebug'
require './reviews.rb'

class Employee
  attr_reader :name, :email, :phone, :salary, :department

  attr_accessor :review

  def initialize(name: nil, email: nil, phone: nil, salary: nil, department: nil, review: nil, performance: nil)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @department = department
    @performance = performance
    @review = review
  end

  def access_review(name)
    @reviews.select {|n| (n.match(/\b#{name}\b/i)) ? (n = name.review) : false}
  end

  def performance
    @performance = "satisfactory"
  end

  def salary_adjustment(performance, salary)
    if performance == "satisfactory"
      @salary = (10.0/100 * salary)  + salary
    else
      false
    end
  end

  # def determine_performance(access_review(name))
  # end
end
