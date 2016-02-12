require 'byebug'
require './reviews.rb'

class Employee
  attr_reader :name, :email, :phone_number, :salary, :department, :reviews

  def initialize(name, email, phone_number, salary, department = nil)
    @name = name
    @email = email
    @phone_number = phone_number
    @salary = salary
    @department = department
    @reviews = []
  end

  def access_review(name)
    @reviews.select {|n| n.match(/\b#{name}\b/i)}
  end

end
