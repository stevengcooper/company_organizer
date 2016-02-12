require 'byebug'
require './reviews.rb'

class Employee

  include Reviews

  attr_reader :name, :email, :phone, :department

  attr_accessor :review, :salary

  def initialize(name: nil, email: nil, phone: nil, salary: nil, review: nil, performance: nil)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @department = department
    @review = review
    @performance = performance
    @staff_reviews = staff_reviews
  end

  def access_review(name)
    @review = @staff_reviews.select {|n| (n.scan(/\b#{name}\b/i).length >= 1) ? n : false}
  end

  def performance
    @performance == "satisfactory" ? (@performance = "satisfactory") : (@performance = "unsatisfactory")
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
